# Solve the Brusselator example using ARKode
# Adapted from examples/arkode/C_serial/ark_brusselator.c
# Consider
#  du/dt = a - (w+1)*u + v*u^2
#  dv/dt = w*u - v*u^2
#  dw/dt = (b-w)/ep - w*u
#  for t in the interval [0.0, 10.0], with initial conditions
#  Y0 = [u0,v0,w0].
#
#  Test data:  u0=1.2,  v0=3.1,  w0=3,  a=1,  b=3.5,  ep=5.0e-6
#    Here, w experiences a fast initial transient, jumping 0.5
#    within a few steps.  All values proceed smoothly until
#    around t=6.5, when both u and v undergo a sharp transition,
#    with u increaseing from around 0.5 to 5 and v decreasing
#    from around 6 to 1 in less than 0.5 time units.  After this
#    transition, both u and v continue to evolve somewhat
#    rapidly for another 1.4 time units, and finish off smoothly.

function fi(t, y_in, ydot_in, user_data)
  y = Sundials.asarray(y_in)
  rdata = pointer_to_array(user_data, length(y))
  a = rdata[0]          #/* access data entries */
  b  = rdata[1]
  ep = rdata[2]
  ydot = Sundials.asarray(ydot_in)
  #   /* fill in the RHS function */
  ydot[1] = a - (y[3] + 1.0) * y[1] + v * y[1]^2
  ydot[2] = y[3] * y[1] - v * y[1]^2
  ydot[3] = (b - y[3]) / ep - y[3] * y[1]

  return int32(0)        #/* Return with success */
end
## using StrPack
## @struct type J_DlsMat
##     typ::Int32
##     M::Int
##     N::Int
##     ldim::Int
##     mu::Int
##     ml::Int
##     s_mu::Int
##     data::Ptr{Float64}
##     ldata::Int
##     cols::Ptr{Ptr{Float64}}
## end

function Jfi(N, t, y_in, fn_in, J, user_Data, tmp1, tmp2, tmp3)
  y = Sundials.asarray(y_in)
  rdata = pointer_to_array(user_data, length(y))   #/* cast user_data to realtype */
  ep = rdata[3];           #/* access data entries */
  u = y[1]                 #/* access solution values */
  v = y[2]
  w = y[3]

#   /* fill in the Jacobian */
  DENSE_ELEM(J,0,0) = -(w+1.0) + 2.0*u*v;
  DENSE_ELEM(J,0,1) = u*u;
  DENSE_ELEM(J,0,2) = -u;

  DENSE_ELEM(J,1,0) = w - 2.0*u*v;
  DENSE_ELEM(J,1,1) = -u*u;
  DENSE_ELEM(J,1,2) = u;

  DENSE_ELEM(J,2,0) = -w;
  DENSE_ELEM(J,2,1) = 0.0;
  DENSE_ELEM(J,2,2) = -1.0/ep - u;

  return int32(0)                                  #/* Return with success */
end
# function fe(t, y_in, ydot_in, user_data)
# #   y = Sundials.asarray(y_in)
# #   rdata = pointer_to_array(user_data, length(y))
# #   a = rdata[0]          #/* access data entries */
# #   b  = rdata[1]
# #   ep = rdata[2]
#   ydot = Sundials.asarray(ydot_in)
#   #   /* fill in the RHS function */
#   ydot[1] = 0.0
#   ydot[2] = 0.0
#   ydot[3] = 0.0

#   return int32(0)::Int32        #/* Return with success */
# end
const neq = 3
const T0 = 0.0     #/* initial time */
const Tf = 10.0   #/* final time */
const dTout = 1.0  #/* time between outputs */
const Nt = iceil(Tf/dTout)

const reltol = 1.0e-6
const abstol = 1.0e-10
const u0 = 3.0
const v0 = 3.0
const w0 = 3.5
const a  = 0.5
const b  = 3.0
const ep = 5.0e-4

print("\nBrusselator ODE test problem:\n")
@printf "    initial conditions:  u0 = %e,  v0 = %e,  w0 = %e\n" u0 v0 w0
@printf "    problem parameters:  a = %e,  b = %e,  ep = %e\n" a b ep
@printf "    reltol = %.1e,  abstol = %.1e\n\n" reltol abstol


const rdata = [a, b, ep] #/* set user data  */
const y = zeros(neq)
y[1] = u0               #/* Set initial conditions */
y[2] = v0
y[3] = w0

const amem = Sundials.ARKodeCreate()

flag = Sundials.ARKodeInit(amem, fi, T0, y)
flag = Sundials.ARKodeSetUserData(amem, Sundials.nvector(rdata))
flag = Sundials.ARKodeSStolerances(amem, reltol, abstol)
flag = Sundials.ARKDense(amem, neq)
# flag = Sundials.ARKDlsSetDenseJacFn(arkode_mem, Jac)

# nst = [0.0]; nst_a = [0.0]; nfe = [0.0]; nfi = [0.0]
# nsetups = [0.0]; netf = [0.0]; nni = [0.0];
# ncfn = [0.0]; nje = [0.0]; nfeLS = [0.0]
# flag = Sundials.ARKodeGetNumSteps(amem, nst)
# flag = Sundials.ARKodeGetNumStepAttempts(amem, nst_a)
# flag = Sundials.ARKodeGetNumRhsEvals(amem, nfe, nfi)
# flag = Sundials.ARKodeGetNumLinSolvSetups(amem, nsetups)
# flag = Sundials.ARKodeGetNumErrTestFails(amem, netf)
# flag = Sundials.ARKodeGetNumNonlinSolvIters(amem, nni)
# flag = Sundials.ARKodeGetNumNonlinSolvConvFails(amem, ncfn)
# flag = Sundials.ARKDlsGetNumJacEvals(amem, nje)
# flag = Sundials.ARKDlsGetNumRhsEvals(amem, nfeLS)

# println("\nFinal Solver Statistics:")
# @printf "   Internal solver steps = %li (attempted = %li)\n" nst nst_a
# @printf "   Total RHS evals:  Fe = %li,  Fi = %li\n" nfe nfi
# @printf "   Total linear solver setups = %li\n" nsetups
# @printf "   Total RHS evals for setting up the linear system = %li\n" nfeLS
# @printf "   Total number of Jacobian evaluations = %li\n" nje
# @printf "   Total number of Newton iterations = %li\n" nni
# @printf "   Total number of linear solver convergence failures = %li\n" ncfn
# @printf "   Total number of error test failures = %li\n\n" netf
Sundials.ARKodeFree([amem])
