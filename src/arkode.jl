recurs_sym_type(ex::Any) =
  (ex==None || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
macro c(ret_type, func, arg_types, lib)
  local _arg_types = Expr(:tuple, [recurs_sym_type(a) for a in arg_types.args]...)
  local _ret_type = recurs_sym_type(ret_type)
  local _args_in = Any[ symbol(string('a',x)) for x in 1:length(_arg_types.args) ]
  local _lib = eval(lib)
  quote
    $(esc(func))($(_args_in...)) = ccall( ($(string(func)), $(Expr(:quote, _lib)) ), $_ret_type, $_arg_types, $(_args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  real_t = recurs_sym_type(real_t)
  quote
    typealias $fake_t $real_t
  end
end

#header: arkode/arkode.h
# #= max number of overall stages allowed =#
const ARK_S_MAX          =8
ARK_A(A,i,j) = A[i * ARK_S_MAX + j]

# #= itask =#
const ARK_NORMAL         =1
const ARK_ONE_STEP       =2


# #= ARKODE return flags =#
const ARK_SUCCESS               =0
const ARK_TSTOP_RETURN          =1
const ARK_ROOT_RETURN           =2

const ARK_WARNING              =99

const ARK_TOO_MUCH_WORK        =-1
const ARK_TOO_MUCH_ACC         =-2
const ARK_ERR_FAILURE          =-3
const ARK_CONV_FAILURE         =-4

const ARK_LINIT_FAIL           =-5
const ARK_LSETUP_FAIL          =-6
const ARK_LSOLVE_FAIL          =-7
const ARK_RHSFUNC_FAIL         =-8
const ARK_FIRST_RHSFUNC_ERR    =-9
const ARK_REPTD_RHSFUNC_ERR    =-10
const ARK_UNREC_RHSFUNC_ERR    =-11
const ARK_RTFUNC_FAIL          =-12
const ARK_LFREE_FAIL           =-13
const ARK_MASSINIT_FAIL        =-14
const ARK_MASSSETUP_FAIL       =-15
const ARK_MASSSOLVE_FAIL       =-16
const ARK_MASSFREE_FAIL        =-17
const ARK_MASSMULT_FAIL        =-18

const ARK_MEM_FAIL             =-20
const ARK_MEM_NULL             =-21
const ARK_ILL_INPUT            =-22
const ARK_NO_MALLOC            =-23
const ARK_BAD_K                =-24
const ARK_BAD_T                =-25
const ARK_BAD_DKY              =-26
const ARK_TOO_CLOSE            =-27

# typedef int (*ARKRhsFn)
# typedef int (*ARKRootFn)
# typedef int (*ARKEwtFn)
# typedef int (*ARKRwtFn)
# typedef void (*ARKErrHandlerFn)
# typedef int (*ARKAdaptFn)
# typedef int (*ARKExpStabFn)
# typedef int (*ARKVecResizeFn)

# void *ARKodeCreate();
# int ARKodeSetDefaults(void *arkode_mem);
# int ARKodeSetOptimalParams(void *arkode_mem);
# int ARKodeSetErrHandlerFn(void *arkode_mem,
# 					  ARKErrHandlerFn ehfun,
# 					  void *eh_data);
# int ARKodeSetErrFile(void *arkode_mem,
# 				     FILE *errfp);
# int ARKodeSetUserData(void *arkode_mem,
# 				      void *user_data);
# int ARKodeSetDiagnostics(void *arkode_mem,
# 					 FILE *diagfp);
# int ARKodeSetOrder(void *arkode_mem, int maxord);
# int ARKodeSetDenseOrder(void *arkode_mem, int dord);
# int ARKodeSetLinear(void *arkode_mem, int timedepend);
# int ARKodeSetNonlinear(void *arkode_mem);
# int ARKodeSetFixedPoint(void *arkode_mem, long int fp_m);
# int ARKodeSetNewton(void *arkode_mem);
# int ARKodeSetExplicit(void *arkode_mem);
# int ARKodeSetImplicit(void *arkode_mem);
# int ARKodeSetImEx(void *arkode_mem);
# int ARKodeSetERKTable(void *arkode_mem, int s,
# 				      int q, int p, realtype *c,
# 				      realtype *A, realtype *b,
# 				      realtype *bembed);
# int ARKodeSetIRKTable(void *arkode_mem, int s,
# 				      int q, int p, realtype *c,
# 				      realtype *A, realtype *b,
# 				      realtype *bembed);
# int ARKodeSetARKTables(void *arkode_mem, int s,
# 				       int q, int p, realtype *c,
# 				       realtype *Ai, realtype *Ae,
# 				       realtype *b, realtype *bembed);
# int ARKodeSetERKTableNum(void *arkode_mem, int itable);
# int ARKodeSetIRKTableNum(void *arkode_mem, int itable);
# int ARKodeSetARKTableNum(void *arkode_mem,
# 					 int itable, int etable);
# int ARKodeSetMaxNumSteps(void *arkode_mem,
# 					 long int mxsteps);
# int ARKodeSetMaxHnilWarns(void *arkode_mem,
# 					  int mxhnil);
# int ARKodeSetInitStep(void *arkode_mem,
# 				      realtype hin);
# int ARKodeSetMinStep(void *arkode_mem,
# 				     realtype hmin);
# int ARKodeSetMaxStep(void *arkode_mem,
# 				     realtype hmax);
# int ARKodeSetStopTime(void *arkode_mem,
# 				      realtype tstop);
# int ARKodeSetFixedStep(void *arkode_mem,
# 				       realtype hfixed);
# int ARKodeSetCFLFraction(void *arkode_mem,
# 					 realtype cfl_frac);
# int ARKodeSetSafetyFactor(void *arkode_mem,
# 					  realtype safety);
# int ARKodeSetErrorBias(void *arkode_mem,
# 				       realtype bias);
# int ARKodeSetMaxGrowth(void *arkode_mem,
# 				       realtype mx_growth);
# int ARKodeSetFixedStepBounds(void *arkode_mem,
# 					     realtype lb, realtype ub);
# int ARKodeSetAdaptivityMethod(void *arkode_mem,
# 					      int imethod,
# 					      int idefault, int pq,
# 					      realtype *adapt_params);
# int ARKodeSetAdaptivityFn(void *arkode_mem,
# 					  ARKAdaptFn hfun,
# 					  void *h_data);
# int ARKodeSetMaxFirstGrowth(void *arkode_mem,
# 					    realtype etamx1);
# int ARKodeSetMaxEFailGrowth(void *arkode_mem,
# 					    realtype etamxf);
# int ARKodeSetSmallNumEFails(void *arkode_mem,
# 					    int small_nef);
# int ARKodeSetMaxCFailGrowth(void *arkode_mem,
# 					    realtype etacf);
# int ARKodeSetNonlinCRDown(void *arkode_mem,
# 					  realtype crdown);
# int ARKodeSetNonlinRDiv(void *arkode_mem,
# 					realtype rdiv);
# int ARKodeSetDeltaGammaMax(void *arkode_mem,
# 					   realtype dgmax);
# int ARKodeSetMaxStepsBetweenLSet(void *arkode_mem,
# 						 int msbp);
# int ARKodeSetPredictorMethod(void *arkode_mem,
# 					     int method);
# int ARKodeSetStabilityFn(void *arkode_mem,
# 					 ARKExpStabFn EStab,
# 					 void *estab_data);
# int ARKodeSetMaxErrTestFails(void *arkode_mem,
# 					     int maxnef);
# int ARKodeSetMaxNonlinIters(void *arkode_mem,
# 					    int maxcor);
# int ARKodeSetMaxConvFails(void *arkode_mem,
# 					  int maxncf);
# int ARKodeSetNonlinConvCoef(void *arkode_mem,
# 					    realtype nlscoef);

# int ARKodeSetRootDirection(void *arkode_mem,
# 					   int *rootdir);
# int ARKodeSetNoInactiveRootWarn(void *arkode_mem);
# int ARKodeInit(void *arkode_mem, ARKRhsFn fe,
# 			       ARKRhsFn fi, realtype t0, N_Vector y0);
# int ARKodeReInit(void *arkode_mem, ARKRhsFn fe,
# 				 ARKRhsFn fi, realtype t0, N_Vector y0);
# int ARKodeResize(void *arkode_mem, N_Vector ynew,
# 				 realtype hscale, realtype t0,
# 				 ARKVecResizeFn resize,
# 				 void *resize_data);
# int ARKodeSStolerances(void *arkode_mem,
# 				       realtype reltol,
# 				       realtype abstol);
# int ARKodeSVtolerances(void *arkode_mem,
# 				       realtype reltol,
# 				       N_Vector abstol);
# int ARKodeWFtolerances(void *arkode_mem,
# 				       ARKEwtFn efun);
# int ARKodeResStolerance(void *arkode_mem,
# 					realtype rabstol);
# int ARKodeResVtolerance(void *arkode_mem,
# 					N_Vector rabstol);
# int ARKodeResFtolerance(void *arkode_mem,
# 					ARKRwtFn rfun);
# int ARKodeRootInit(void *arkode_mem,
# 				   int nrtfn,
# 				   ARKRootFn g);
# int ARKode(void *arkode_mem, realtype tout,
# 			   N_Vector yout, realtype *tret, int itask);
# int ARKodeGetDky(void *arkode_mem, realtype t,
# 				 int k, N_Vector dky);
# int ARKodeGetWorkSpace(void *arkode_mem,
# 				       long int *lenrw,
# 				       long int *leniw);
# int ARKodeGetNumSteps(void *arkode_mem,
# 				      long int *nsteps);
# int ARKodeGetNumExpSteps(void *arkode_mem,
# 					 long int *expsteps);
# int ARKodeGetNumAccSteps(void *arkode_mem,
# 					 long int *accsteps);
# int ARKodeGetNumStepAttempts(void *arkode_mem,
# 					     long int *step_attempts);
# int ARKodeGetNumRhsEvals(void *arkode_mem,
# 					 long int *nfe_evals,
# 					 long int *nfi_evals);
# int ARKodeGetNumLinSolvSetups(void *arkode_mem,
# 					      long int *nlinsetups);
# int ARKodeGetNumMassSolves(void *arkode_mem,
# 					   long int *nMassSolves);
# int ARKodeGetNumMassMultiplies(void *arkode_mem,
# 					       long int *nMassMult);
# int ARKodeGetNumErrTestFails(void *arkode_mem,
# 					     long int *netfails);
# int ARKodeGetActualInitStep(void *arkode_mem,
# 					    realtype *hinused);
# int ARKodeGetLastStep(void *arkode_mem,
# 				      realtype *hlast);
# int ARKodeGetCurrentStep(void *arkode_mem,
# 					 realtype *hcur);
# int ARKodeGetCurrentTime(void *arkode_mem,
# 					 realtype *tcur);
# int ARKodeGetCurrentButcherTables(void *arkode_mem,
# 						  int *s, int *q,
# 						  int *p, realtype *Ai,
# 						  realtype *Ae, realtype *c,
# 						  realtype *b, realtype *b2);
# int ARKodeGetTolScaleFactor(void *arkode_mem,
# 					    realtype *tolsfac);
# int ARKodeGetErrWeights(void *arkode_mem,
# 					N_Vector eweight);
# int ARKodeGetEstLocalErrors(void *arkode_mem,
# 					    N_Vector ele);
# int ARKodeGetNumGEvals(void *arkode_mem,
# 				       long int *ngevals);
# int ARKodeGetRootInfo(void *arkode_mem,
# 				      int *rootsfound);
# int ARKodeGetIntegratorStats(void *arkode_mem,
# 					     long int *nsteps,
# 					     long int *expsteps,
# 					     long int *accsteps,
# 					     long int *step_attempts,
# 					     long int *nfe_evals,
# 					     long int *nfi_evals,
# 					     long int *nlinsetups,
# 					     long int *netfails,
# 					     realtype *hinused,
# 					     realtype *hlast,
# 					     realtype *hcur,
# 					     realtype *tcur);
# int ARKodeGetNumNonlinSolvIters(void *arkode_mem,
# 						long int *nniters);
# int ARKodeGetNumNonlinSolvConvFails(void *arkode_mem,
# 						    long int *nncfails);

# #=---------------------------------------------------------------
#  As a convenience, the following function provides the
#  nonlinear solver optional outputs in a group.
# ---------------------------------------------------------------=#
# int ARKodeGetNonlinSolvStats(void *arkode_mem,
# 					     long int *nniters,
# 					     long int *nncfails);
# int ARKodeLoadButcherTable(int imethod, int *s,
# 					   int *q, int *p,
# 					   realtype *A, realtype *b,
# 					   realtype *c, realtype *b2);

# char *ARKodeGetReturnFlagName(long int flag);

# int ARKodeWriteParameters(void *arkode_mem, FILE *fp);
# int ARKodeWriteButcher(void *arkode_mem, FILE *fp);
# void ARKodeFree(void **arkode_mem);

#header: arkode/arkode_band.h
# int ARKBand(void *arkode_mem, long int N,
# 			    long int mupper, long int mlower);
# int ARKMassBand(void *arkode_mem, long int N,
# 				long int mupper, long int mlower,
# 				ARKDlsBandMassFn bmass);

#header: arkode/arkode_bandpre.h
# int ARKBandPrecInit(void *arkode_mem, long int N,
# 				    long int mu, long int ml);
# int ARKBandPrecGetWorkSpace(void *arkode_mem,
# 					    long int *lenrwLS,
# 					    long int *leniwLS);
# int ARKBandPrecGetNumRhsEvals(void *arkode_mem,
# 					      long int *nfevalsBP);

#header: arkode/arkode_bbdpre.h
# typedef int (*ARKLocalFn)
# typedef int (*ARKCommFn)
# int ARKBBDPrecInit(void *arkode_mem, long int Nlocal,
# 				   long int mudq, long int mldq,
# 				   long int mukeep, long int mlkeep,
# 				   realtype dqrely,
# 				   ARKLocalFn gloc, ARKCommFn cfn);
# int ARKBBDPrecReInit(void *arkode_mem, long int mudq,
# 				     long int mldq, realtype dqrely);
# int ARKBBDPrecGetWorkSpace(void *arkode_mem,
# 					   long int *lenrwLS,
# 					   long int *leniwLS);
# int ARKBBDPrecGetNumGfnEvals(void *arkode_mem,
# 					     long int *ngevalsBBDP);
#header: arkode/arkode_dense.h
# int ARKDense(void *arkode_mem, long int N);
# int ARKMassDense(void *arkode_mem, long int N,
# 				 ARKDlsDenseMassFn dmass);

#header: arkode/arkode_direct.h
# #= ARKDLS return values =#
const ARKDLS_SUCCESS         = 0
const ARKDLS_MEM_NULL        =-1
const ARKDLS_LMEM_NULL       =-2
const ARKDLS_ILL_INPUT       =-3
const ARKDLS_MEM_FAIL        =-4
const ARKDLS_MASSMEM_NULL    =-5

# #= Additional last_flag values =#
const ARKDLS_JACFUNC_UNRECVR  =-6
const ARKDLS_JACFUNC_RECVR    =-7
const ARKDLS_MASSFUNC_UNRECVR =-8
const ARKDLS_MASSFUNC_RECVR   =-9

# typedef int (*ARKDlsDenseJacFn)
# typedef int (*ARKDlsDenseMassFn)
# typedef int (*ARKDlsBandJacFn)
# typedef int (*ARKDlsBandMassFn)

# int ARKDlsSetDenseJacFn(void *arkode_mem,
# 					ARKDlsDenseJacFn jac);
# int ARKDlsSetBandJacFn(void *arkode_mem,
# 				       ARKDlsBandJacFn jac);
# int ARKDlsSetDenseMassFn(void *arkode_mem,
# 					 ARKDlsDenseMassFn mass);
# int ARKDlsSetBandMassFn(void *arkode_mem,
# 					ARKDlsBandMassFn mass);
# int ARKDlsGetWorkSpace(void *arkode_mem,
# 				       long int *lenrwLS,
# 				       long int *leniwLS);
# int ARKDlsGetMassWorkSpace(void *arkode_mem,
# 					   long int *lenrwMLS,
# 					   long int *leniwMLS);
# int ARKDlsGetNumJacEvals(void *arkode_mem,
# 					 long int *njevals);
# int ARKDlsGetNumMassEvals(void *arkode_mem,
# 					  long int *nmevals);
# int ARKDlsGetNumRhsEvals(void *arkode_mem,
# 					 long int *nfevalsLS);
# int ARKDlsGetLastFlag(void *arkode_mem,
# 				      long int *flag);
# int ARKDlsGetLastMassFlag(void *arkode_mem,
# 					  long int *flag);
# char *ARKDlsGetReturnFlagName(long int flag);

#header: arkode/arkode_impl.h
# #= Basic ARKODE constants =#
const Q_DEFAULT        =4       #= default RK order =#
const QDENSE_DEF       =3       #= default dense output order =#
const MXSTEP_DEFAULT   =500     #= mxstep default value =#
const MAXNEF           =7       #= maxnef default value =#
const MAXNCF           =10      #= maxncf default value =#
const MXHNIL           =10      #= mxhnil default value =#
const MAXCOR           =3       #= maxcor default value =#
const FP_ACCEL_M       =3       #= fp_m default value =#
const RCONST = float
# #= Numeric constants =#
const ZERO   =RCONST(0.0)      #= real 0.0     =#
const TINY   =RCONST(1.0e-10)  #= small number =#
const TENTH  =RCONST(0.1)      #= real 0.1     =#
const POINT2 =RCONST(0.2)      #= real 0.2     =#
const FOURTH =RCONST(0.25)     #= real 0.25    =#
const HALF   =RCONST(0.5)      #= real 0.5     =#
const ONE    =RCONST(1.0)      #= real 1.0     =#
const TWO    =RCONST(2.0)      #= real 2.0     =#
const THREE  =RCONST(3.0)      #= real 3.0     =#
const FOUR   =RCONST(4.0)      #= real 4.0     =#
const FIVE   =RCONST(5.0)      #= real 5.0     =#
const SIX    =RCONST(6.0)      #= real 6.0     =#
const SEVEN  =RCONST(7.0)      #= real 7.0     =#
const TWELVE =RCONST(12.0)     #= real 12.0    =#
const HUND   =RCONST(100.0)    #= real 100.0   =#

# #= Time step controller default values =#
const CFLFAC    =RCONST(0.5)
const SAFETY    =RCONST(0.96)  #= CVODE uses 1.0  =#
const BIAS      =RCONST(1.5)   #= CVODE uses 6.0  =#
const GROWTH    =RCONST(20.0)  #= CVODE uses 10.0 =#
const HFIXED_LB =RCONST(1.0)   #= CVODE uses 1.0  =#
const HFIXED_UB =RCONST(1.5)   #= CVODE uses 1.5  =#
const AD0_K1    =RCONST(0.58)  #= PID controller constants =#
const AD0_K2    =RCONST(0.21)
const AD0_K3    =RCONST(0.1)
const AD1_K1    =RCONST(0.8)   #= PI controller constants =#
const AD1_K2    =RCONST(0.31)
const AD2_K1    =RCONST(1.0)   #= I controller constants =#
const AD3_K1    =RCONST(0.367) #= explicit Gustafsson controller =#
const AD3_K2    =RCONST(0.268)
const AD4_K1    =RCONST(0.98)  #= implicit Gustafsson controller =#
const AD4_K2    =RCONST(0.95)
const AD5_K1    =RCONST(0.367) #= imex Gustafsson controller =#
const AD5_K2    =RCONST(0.268)
const AD5_K3    =RCONST(0.95)

# #= Default solver tolerance factor =#
# #= const NLSCOEF   RCONST(0.003)   /\* Hairer & Wanner constant *\/ =#
# #= const NLSCOEF   RCONST(0.2)     /\* CVODE constant *\/ =#
const NLSCOEF   =RCONST(0.1)

# #= Control constants for tolerances =#
const ARK_SS  =0
const ARK_SV  =1
const ARK_WF  =2

#              ARKODE Routine-Specific Constants
const SOLVE_SUCCESS    =2
const PREDICT_AGAIN    =3

const CONV_FAIL        =+4
const TRY_AGAIN        =+5

const FIRST_CALL       =+6
const PREV_CONV_FAIL   =+7
const PREV_ERR_FAIL    =+8

const RHSFUNC_RECVR    =+9

const RTFOUND          =+1
const CLOSERT          =+3

const FUZZ_FACTOR =RCONST(100.0)

const H0_LBFACTOR =RCONST(100.0)
const H0_UBFACTOR =RCONST(0.1)
const H0_BIAS     =HALF
const H0_ITERS    =4

const ETAMX1      =RCONST(10000.0)     #= default =#
const ETAMXF      =RCONST(0.3)         #= default =#
const ETAMIN      =RCONST(0.1)         #= default =#
const ETACF       =RCONST(0.25)        #= default =#
const ONEPSM      =RCONST(1.000001)
const ONEMSM      =RCONST(0.999999)
const SMALL_NEF   =2                   #= default =#

const CRDOWN      =RCONST(0.3)         #= default =#
const DGMAX       =RCONST(0.2)         #= default =#
const RDIV        =RCONST(2.3)         #= default =#
const MSBP        =20                  #= default =#

#  Types : struct ARKodeMemRec, ARKodeMem
# -----------------------------------------------------------------
#  The type ARKodeMem is type pointer to struct ARKodeMemRec.
#  This structure contains fields to keep track of problem state.
# ---------------------------------------------------------------=#
# typedef struct ARKodeMemRec {

#   realtype ark_uround;         #= machine unit roundoff =#

#   #=--------------------------
#     Problem Specification Data
#     --------------------------=#
#   ARKRhsFn     ark_fe;         #= y' = fe(t,y(t)) + fi(t,y(t))          =#
#   ARKRhsFn     ark_fi;
#   void        *ark_user_data;  #= user pointer passed to fe, fi         =#
#   ARKExpStabFn ark_expstab;    #= time step stability function for fe   =#
#   void        *ark_estab_data; #= user pointer passed to expstab        =#
#   int          ark_itol;       #= itol = ARK_SS (scalar, default),
#                                          ARK_SV (vector),
#                                          ARK_WF (user weight function)  =#
#   int          ark_ritol;      #= itol = ARK_SS (scalar, default),
#                                          ARK_SV (vector),
#                                          ARK_WF (user weight function)  =#
#   realtype     ark_reltol;     #= relative tolerance                    =#
#   realtype     ark_Sabstol;    #= scalar absolute solution tolerance    =#
#   N_Vector     ark_Vabstol;    #= vector absolute solution tolerance    =#
#   realtype     ark_SRabstol;   #= scalar absolute residual tolerance    =#
#   N_Vector     ark_VRabstol;   #= vector absolute residual tolerance    =#
#   booleantype  ark_user_efun;  #= TRUE if user sets efun                =#
#   ARKEwtFn     ark_efun;       #= function to set ewt                   =#
#   void        *ark_e_data;     #= user pointer passed to efun           =#
#   booleantype  ark_user_rfun;  #= TRUE if user sets rfun                =#
#   ARKRwtFn     ark_rfun;       #= function to set rwt                   =#
#   void        *ark_r_data;     #= user pointer passed to rfun           =#
#   booleantype  ark_linear;     #= TRUE if fi is linear                  =#
#   booleantype  ark_linear_timedep;  #= TRUE if dfi/dy depends on t      =#
#   booleantype  ark_explicit;   #= TRUE if fi is disabled                =#
#   booleantype  ark_implicit;   #= TRUE if fe is disabled                =#

#   #=-----------------
#     Stored RHS arrays
#     -----------------=#
#   N_Vector ark_Fe[ARK_S_MAX];  #= explicit RHS at each stage =#
#   N_Vector ark_Fi[ARK_S_MAX];  #= implicit RHS at each stage =#

#   #=--------------------------
#     other vectors of length N
#     -------------------------=#
#   N_Vector ark_ewt;     #= error weight vector                               =#
#   N_Vector ark_rwt;     #= residual weight vector                            =#
#   booleantype ark_rwt_is_ewt;     #= TRUE if rwt is a pointer to ewt         =#
#   N_Vector ark_y;       #= y is used as temporary storage by the solver
# 			   The memory is provided by the user to ARKode
# 			   where the vector is named yout.                   =#
#   N_Vector ark_ycur;    #= ycur always holds the solver's current version of
#                            the solution =#
#   N_Vector ark_sdata;   #= Storage for old stage data in computing residual. =#
#   N_Vector ark_tempv;   #= temporary storage vector                          =#
#   N_Vector ark_acor;    #= temporary storage vector; Between steps this
# 			   holds the estimaged local error                   =#
#   N_Vector ark_ftemp;   #= temporary storage vector                          =#
#   N_Vector ark_fold;    #= f(t,y) at beginning of last successful step       =#
#   N_Vector ark_fnew;    #= f(t,y) at end of last successful step             =#
#   N_Vector ark_yold;    #= y at beginning of last successful step            =#
#   N_Vector ark_ynew;    #= y at end of last successful step                  =#
#   #= N_Vector ark_fa;      /\* f at h/3 through step (high order dense output)   *\/ =#
#   #= N_Vector ark_fb;      /\* f at h*2/3 through step (high order dense output) *\/ =#

#   #=-----------------
#     Tstop information
#     -----------------=#
#   booleantype ark_tstopset;
#   realtype    ark_tstop;

#   #=-----------
#     Method Data
#     -----------=#
#   int ark_q;                              #= method order                   =#
#   int ark_p;                              #= embedding order                =#
#   int ark_istage;                         #= current stage                  =#
#   int ark_stages;                         #= number of stages               =#
#   int ark_dense_q;                        #= dense output polynomial order  =#
#   realtype ark_Ae[ARK_S_MAX*ARK_S_MAX];   #= ERK Butcher table              =#
#   realtype ark_Ai[ARK_S_MAX*ARK_S_MAX];   #= IRK Butcher table              =#
#   realtype ark_c[ARK_S_MAX];              #= RK method canopy nodes         =#
#   realtype ark_b[ARK_S_MAX];              #= RK method solution coeffs      =#
#   realtype ark_b2[ARK_S_MAX];             #= RK method embedding coeffs     =#

#   #=---------
#     Step Data
#     ---------=#
#   realtype ark_hin;             #= initial step size                        =#
#   realtype ark_h;               #= current step size                        =#
#   realtype ark_hprime;          #= step size to be used on the next step    =#
#   realtype ark_next_h;          #= step size to be used on the next step    =#
#   realtype ark_eta;             #= eta = hprime / h                         =#
#   realtype ark_tn;              #= current internal value of t              =#
#   realtype ark_tretlast;        #= value of tret last returned by ARKode    =#
#   realtype ark_gamma;           #= gamma = h * rl1                          =#
#   realtype ark_gammap;          #= gamma at the last setup call             =#
#   realtype ark_gamrat;          #= gamma / gammap                           =#
#   realtype ark_crate;           #= estimated corrector convergence rate     =#
#   realtype ark_eLTE;            #= estimated local truncation error, used in
# 				   nonlinear and linear solver tolerances   =#
#   realtype ark_nlscoef;         #= coefficient in nonlin. convergence test  =#
#   int      ark_mnewt;           #= Newton iteration counter                 =#


#   #=-------------------------
#     Time Step Adaptivity Data
#     -------------------------=#
#   booleantype ark_fixedstep;       #= flag to disable temporal adaptivity    =#
#   ARKAdaptFn ark_hadapt;           #= function to set the new time step size =#
#   void      *ark_hadapt_data;      #= user pointer passed to hadapt          =#
#   realtype   ark_hadapt_ehist[3];  #= error history for time adaptivity      =#
#   realtype   ark_hadapt_hhist[3];  #= step history for time adaptivity       =#
#   int        ark_hadapt_imethod;   #= time step adaptivity method to use:
# 				      -1 -> User-specified function above
# 				       0 -> PID controller
# 				       1 -> PI controller
# 				       2 -> I controller
# 				       3 -> explicit Gustafsson controller
# 				       4 -> implicit Gustafsson controller
# 				       5 -> imex Gustafsson controller       =#
#   realtype   ark_hadapt_cfl;       #= cfl safety factor                      =#
#   realtype   ark_hadapt_safety;    #= accuracy safety factor on h            =#
#   realtype   ark_hadapt_bias;      #= accuracy safety factor on LTE          =#
#   realtype   ark_hadapt_growth;    #= maximum step growth safety factor      =#
#   realtype   ark_hadapt_lbound;    #= eta lower bound to leave h unchanged   =#
#   realtype   ark_hadapt_ubound;    #= eta upper bound to leave h unchanged   =#
#   booleantype ark_hadapt_pq;       #= choice of using p (0) vs q (1)         =#
#   realtype   ark_hadapt_k1;
#   realtype   ark_hadapt_k2;        #= method-specific adaptivity parameters  =#
#   realtype   ark_hadapt_k3;

#   #=------------------------------------
#     Limits and various solver parameters
#     ------------------------------------=#
#   long int ark_mxstep;   #= max number of internal steps for one user call =#
#   int      ark_maxcor;   #= max number of corrector iterations for the
# 			    solution of the nonlinear equation             =#
#   int      ark_mxhnil;   #= max number of warning messages issued to the
# 			    user that t+h == t for the next internal step  =#
#   int      ark_maxnef;   #= max number of error test failures in one step  =#
#   int      ark_maxncf;   #= max number of nonlin. conv. fails in one step  =#
#   realtype ark_hmin;     #= |h| >= hmin                                    =#
#   realtype ark_hmax_inv; #= |h| <= 1/hmax_inv                              =#
#   realtype ark_etamax;   #= eta <= etamax                                  =#

#   realtype ark_etamx1;   #= max step size change on first step             =#
#   realtype ark_etamxf;   #= h reduction factor on multiple error fails     =#
#   int ark_small_nef;     #= bound to determine 'multiple' above            =#
#   realtype ark_etacf;    #= h reduction factor on nonlinear conv fail      =#

#   realtype ark_crdown;   #= nonlinear convergence rate estimation constant =#
#   realtype ark_rdiv;     #= declare divergence if ratio del/delp > RDIV    =#

#   realtype ark_dgmax;    #= if |gamma/gammap-1| > DGMAX then call lsetup   =#
#   int ark_msbp;          #= positive => max # steps between lsetup calls
# 			    negative => recompute at every Newton iter.    =#
#   int ark_predictor;     #= choice of prediction method =#

#   #=--------
#     Counters
#     --------=#
#   long int ark_nst;          #= number of internal steps taken             =#
#   long int ark_nst_acc;      #= number of accuracy-limited internal steps  =#
#   long int ark_nst_exp;      #= number of stability-limited internal steps =#
#   long int ark_nst_attempts; #= number of attempted steps                  =#
#   long int ark_nfe;          #= number of fe calls                         =#
#   long int ark_nfi;          #= number of fi calls                         =#
#   long int ark_ncfn;         #= number of corrector convergence failures   =#
#   long int ark_nmassfails;   #= number of mass matrix solver failures      =#
#   long int ark_netf;         #= number of error test failures              =#
#   long int ark_nni;          #= number of Newton iterations performed      =#
#   long int ark_nsetups;      #= number of setup calls                      =#
#   int      ark_nhnil;        #= number of messages issued to the user that
# 			        t+h == t for the next iternal step         =#

#   #=-----------------
#     Diagnostic output
#     -----------------=#
#   booleantype ark_report;   #= flag to enable/disable diagnostic output    =#
#   FILE       *ark_diagfp;   #= diagnostic outputs are sent to ark_diagfp   =#

#   #=-----------------------------
#     Space requirements for ARKODE
#     -----------------------------=#
#   long int ark_lrw1;        #= no. of realtype words in 1 N_Vector          =#
#   long int ark_liw1;        #= no. of integer words in 1 N_Vector           =#
#   long int ark_lrw;         #= no. of realtype words in ARKODE work vectors =#
#   long int ark_liw;         #= no. of integer words in ARKODE work vectors  =#


#   #=-----------------------
#     Fixed-point Solver Data
#     -----------------------=#
#   booleantype ark_use_fp;     #= flag to enable fixed-point solver vs Newton =#
#   long int    ark_fp_m;       #= number of vectors to use in acceleration    =#
#   long int    *ark_fp_imap;   #= array of length m          =#
#   realtype    *ark_fp_R;      #= array of length m*m        =#
#   realtype    *ark_fp_gamma;  #= array of length m          =#
#   N_Vector    *ark_fp_df;     #= vector array of length m   =#
#   N_Vector    *ark_fp_dg;     #= vector array of length m   =#
#   N_Vector    *ark_fp_q;      #= vector array of length m   =#
#   N_Vector     ark_fp_fval;   #= temporary N_Vectors        =#
#   N_Vector     ark_fp_fold;
#   N_Vector     ark_fp_gold;

#   #=------------------
#     Linear Solver Data
#     ------------------=#
#   int (*ark_linit)(struct ARKodeMemRec *ark_mem);
#   int (*ark_lsetup)(struct ARKodeMemRec *ark_mem, int convfail, N_Vector ypred,
# 		    N_Vector fpred, booleantype *jcurPtr, N_Vector vtemp1,
# 		    N_Vector vtemp2, N_Vector vtemp3);
#   int (*ark_lsolve)(struct ARKodeMemRec *ark_mem, N_Vector b, N_Vector weight,
# 		    N_Vector ycur, N_Vector fcur);
#   void (*ark_lfree)(struct ARKodeMemRec *ark_mem);
#   void *ark_lmem;
#   int ark_lsolve_type;   #= linear solver type: 0=iterative; 1=dense;
#                                                 2=band; 3=custom =#

#   #=-----------------------
#     Mass Matrix Solver Data
#     -----------------------=#
#   booleantype ark_mass_matrix;   #= flag denoting use of a non-identity M  =#
#   long int ark_mass_solves;      #= number of mass matrix solve calls      =#
#   long int ark_mass_mult;        #= number of mass matrix product calls    =#
#   ARKSpilsMassTimesVecFn ark_mtimes;   #= mass-matrix-vector product routine =#
#   void *ark_mtimes_data;         #= user pointer passed to mtimes          =#
#   int (*ark_minit)(struct ARKodeMemRec *ark_mem);
#   int (*ark_msetup)(struct ARKodeMemRec *ark_mem, N_Vector vtemp1,
# 		    N_Vector vtemp2, N_Vector vtemp3);
#   int (*ark_msolve)(struct ARKodeMemRec *ark_mem, N_Vector b, N_Vector weight);
#   void (*ark_mfree)(struct ARKodeMemRec *ark_mem);
#   void *ark_mass_mem;
#   int ark_msolve_type;   #= mass matrix type: 0=iterative; 1=dense;
# 			                      2=band; 3=sparse, 4=custom =#

#   #=------------
#     Saved Values
#     ------------=#
#   long int    ark_nstlp;        #= step number of last setup call             =#
#   realtype    ark_h0u;          #= actual initial stepsize                    =#
#   realtype    ark_tnew;         #= time of last successful step               =#
#   realtype    ark_hold;         #= last successful h value used               =#
#   booleantype ark_jcur;         #= is Jacobian info. for lin. solver current? =#
#   realtype    ark_tolsf;        #= tolerance scale factor                     =#
#   booleantype ark_setupNonNull; #= does ark_lsetup do anything?               =#
#   booleantype ark_MassSetupNonNull; #= does ark_msetup do anything?           =#
#   booleantype ark_VabstolMallocDone;
#   booleantype ark_VRabstolMallocDone;
#   booleantype ark_MallocDone;
#   booleantype ark_resized;      #= denotes first step after ARKodeResize      =#
#   booleantype ark_firststage;   #= denotes first stage in simulation          =#

#   #=-------------------------------------------
#     Error handler function and error ouput file
#     -------------------------------------------=#
#   ARKErrHandlerFn ark_ehfun;    #= error messages are handled by ehfun        =#
#   void           *ark_eh_data;  #= data pointer passed to ehfun               =#
#   FILE           *ark_errfp;    #= ARKODE error messages are sent to errfp    =#

#   #=----------------
#     Rootfinding Data
#     ----------------=#
#   ARKRootFn    ark_gfun;        #= function g for roots sought                  =#
#   int          ark_nrtfn;       #= number of components of g                    =#
#   int         *ark_iroots;      #= array for root information                   =#
#   int         *ark_rootdir;     #= array specifying direction of zero-crossing  =#
#   realtype     ark_tlo;         #= nearest endpoint of interval in root search  =#
#   realtype     ark_thi;         #= farthest endpoint of interval in root search =#
#   realtype     ark_trout;       #= t value returned by rootfinding routine      =#
#   realtype    *ark_glo;         #= saved array of g values at t = tlo           =#
#   realtype    *ark_ghi;         #= saved array of g values at t = thi           =#
#   realtype    *ark_grout;       #= array of g values at t = trout               =#
#   realtype     ark_toutc;       #= copy of tout (if NORMAL mode)                =#
#   realtype     ark_ttol;        #= tolerance on root location                   =#
#   int          ark_taskc;       #= copy of parameter itask                      =#
#   int          ark_irfnd;       #= flag showing whether last step had a root    =#
#   long int     ark_nge;         #= counter for g evaluations                    =#
#   booleantype *ark_gactive;     #= array with active/inactive event functions   =#
#   int          ark_mxgnull;     #= num. warning messages about possible g==0    =#

# } *ARKodeMem;

# #= Constants for convfail (input to ark_lsetup) =#
const ARK_NO_FAILURES =0
const ARK_FAIL_BAD_J  =1
const ARK_FAIL_OTHER  =2

# #= Prototype of internal ewtSet function =#
# int arkEwtSet(N_Vector ycur, N_Vector weight, void *data);

# #= Prototype of internal rwtSet function =#
# int arkRwtSet(N_Vector ycur, N_Vector weight, void *data);

# #= Prototype of internal errHandler function =#
# void arkErrHandler(int error_code, const char *module,
# 		   const char *function, char *msg, void *data);

# #= Prototype of internal explicit stability estimation function =#
# int arkExpStab(N_Vector y, realtype t, realtype *hstab, void *user_data);

# #================================================================
#    HIGH LEVEL ERROR HANDLER, USED THROUGHOUT ARKODE
# ================================================================#

# void arkProcessError(ARKodeMem ark_mem, int error_code,
# 		     const char *module, const char *fname,
# 		     const char *msgfmt, ...);


#header: arkode/arkode_pcg.h
# int ARKPcg(void *arkode_mem, int pretype, int maxl);
# int ARKMassPcg(void *arkode_mem, int pretype, int maxl,
# 			       ARKSpilsMassTimesVecFn mtimes,
# 			       void *mtimes_data);

#header: arkode/arkode_sparse.h
# #= ARKSLS return values =#
const ARKSLS_SUCCESS          = 0
const ARKSLS_MEM_NULL         =-1
const ARKSLS_LMEM_NULL        =-2
const ARKSLS_ILL_INPUT        =-3
const ARKSLS_MEM_FAIL         =-4
const ARKSLS_JAC_NOSET        =-5
const ARKSLS_MASS_NOSET       =-6
const ARKSLS_PACKAGE_FAIL     =-7
const ARKSLS_MASSMEM_NULL     =-8

# #= Additional last_flag values =#
const ARKSLS_JACFUNC_UNRECVR  =-9
const ARKSLS_JACFUNC_RECVR    =-10
const ARKSLS_MASSFUNC_UNRECVR =-11
const ARKSLS_MASSFUNC_RECVR   =-12

@ctypedef ARKSlsSparseJacFn Ptr{:Void}
@ctypedef ARKSlsSparseMassFn Ptr{:Void}
# @c Int32 ARKSlsSetSparseJacFn (Ptr{:None},:KINDlsDenseJacFn) shlib
# int ARKSlsSetSparseJacFn(void *arkode_mem, ARKSlsSparseJacFn jac);
# int ARKSlsSetSparseMassFn(void *arkode_mem, ARKSlsSparseMassFn mass);
# int ARKSlsGetNumJacEvals(void *arkode_mem, long int *njevals);
# int ARKSlsGetNumMassEvals(void *arkode_mem, long int *nmevals);
# int ARKSlsGetLastFlag(void *arkode_mem, long int *flag);
# int ARKSlsGetLastMassFlag(void *arkode_mem, long int *flag);
# char *ARKSlsGetReturnFlagName(long int flag);

#header: arkode/arkode_spbcgs.h
# int ARKSpbcg(void *arkode_mem, int pretype, int maxl);
# int ARKMassSpbcg(void *arkode_mem, int pretype, int maxl,
# 				 ARKSpilsMassTimesVecFn mtimes,
# 				 void *mtimes_data);

#header: arkode/arkode_spfgmr.h
# int ARKSpfgmr(void *arkode_mem, int pretype, int maxl);
# int ARKMassSpfgmr(void *arkode_mem, int pretype, int maxl,
# 				  ARKSpilsMassTimesVecFn mtimes,
# 				  void *mtimes_data);

#header: arkode/arkode_spgmr.h
# int ARKSpgmr(void *arkode_mem, int pretype, int maxl);
# int ARKMassSpgmr(void *arkode_mem, int pretype, int maxl,
# 				 ARKSpilsMassTimesVecFn mtimes,
# 				 void *mtimes_data);

#header: arkode/arkode_spils.h
# #=---------------------------------------------------------------
#  ARKSPILS return values
# ---------------------------------------------------------------=#
const ARKSPILS_SUCCESS      = 0
const ARKSPILS_MEM_NULL     =-1
const ARKSPILS_LMEM_NULL    =-2
const ARKSPILS_ILL_INPUT    =-3
const ARKSPILS_MEM_FAIL     =-4
const ARKSPILS_PMEM_NULL    =-5
const ARKSPILS_MASSMEM_NULL =-6

#=---------------------------------------------------------------
 ARKSPILS solver constants:

 ARKSPILS_MAXL   : default value for the maximum Krylov
                   dimension

 ARKSPILS_MSBPRE : maximum number of steps between
                   preconditioner evaluations

 ARKSPILS_DGMAX  : maximum change in gamma between
                   preconditioner evaluations

 ARKSPILS_EPLIN  : default value for factor by which the
                   tolerance on the nonlinear iteration is
                   multiplied to get a tolerance on the linear
                   iteration
---------------------------------------------------------------=#
const ARKSPILS_MAXL   =5
const ARKSPILS_MSBPRE =50
const ARKSPILS_DGMAX  =0.2
const ARKSPILS_EPLIN  =0.05
# typedef int (*ARKSpilsPrecSetupFn)
# typedef int (*ARKSpilsPrecSolveFn)
# typedef int (*ARKSpilsJacTimesVecFn)
# typedef int (*ARKSpilsMassTimesVecFn)
# typedef int (*ARKSpilsMassPrecSetupFn)
# typedef int (*ARKSpilsMassPrecSolveFn)
# int ARKSpilsSetPrecType(void *arkode_mem, int pretype);
# int ARKSpilsSetMassPrecType(void *arkode_mem, int pretype);
# int ARKSpilsSetGSType(void *arkode_mem, int gstype);
# int ARKSpilsSetMassGSType(void *arkode_mem, int gstype);
# int ARKSpilsSetMaxl(void *arkode_mem, int maxl);
# int ARKSpilsSetMassMaxl(void *arkode_mem, int maxl);
# int ARKSpilsSetEpsLin(void *arkode_mem, realtype eplifac);
# int ARKSpilsSetMassEpsLin(void *arkode_mem, realtype eplifac);
# int ARKSpilsSetPreconditioner(void *arkode_mem,
# 				      ARKSpilsPrecSetupFn pset,
# 				      ARKSpilsPrecSolveFn psolve);
# int ARKSpilsSetMassPreconditioner(void *arkode_mem,
# 					  ARKSpilsMassPrecSetupFn pset,
# 					  ARKSpilsMassPrecSolveFn psolve);
# int ARKSpilsSetJacTimesVecFn(void *arkode_mem,
# 				     ARKSpilsJacTimesVecFn jtv);
# int ARKSpilsSetMassTimesVecFn(void *arkode_mem,
# 				      ARKSpilsMassTimesVecFn mtv,
# 				      void *mtimes_data);
# int ARKSpilsGetWorkSpace(void *arkode_mem,
# 					 long int *lenrwLS,
# 					 long int *leniwLS);
# int ARKSpilsGetMassWorkSpace(void *arkode_mem,
# 					     long int *lenrwMLS,
# 					     long int *leniwMLS);
# int ARKSpilsGetNumPrecEvals(void *arkode_mem,
# 					    long int *npevals);
# int ARKSpilsGetNumMassPrecEvals(void *arkode_mem,
# 						long int *nmpevals);
# int ARKSpilsGetNumPrecSolves(void *arkode_mem,
# 					     long int *npsolves);
# int ARKSpilsGetNumMassPrecSolves(void *arkode_mem,
# 						 long int *nmpsolves);
# int ARKSpilsGetNumLinIters(void *arkode_mem,
# 					   long int *nliters);
# int ARKSpilsGetNumMassIters(void *arkode_mem,
# 					    long int *nmiters);
# int ARKSpilsGetNumConvFails(void *arkode_mem,
# 					    long int *nlcfails);
# int ARKSpilsGetNumMassConvFails(void *arkode_mem,
# 						long int *nmcfails);
# int ARKSpilsGetNumJtimesEvals(void *arkode_mem,
# 					      long int *njvevals);
# int ARKSpilsGetNumRhsEvals(void *arkode_mem,
# 					   long int *nfevalsLS);
# int ARKSpilsGetLastFlag(void *arkode_mem,
# 					long int *flag);
# int ARKSpilsGetLastMassFlag(void *arkode_mem,
# 					    long int *flag);
# char *ARKSpilsGetReturnFlagName(long int flag);

#header: arkode/arkode_sptfqmr.h
# int ARKSptfqmr(void *arkode_mem, int pretype, int maxl);
# int ARKMassSptfqmr(void *arkode_mem, int pretype, int maxl,
# 				   ARKSpilsMassTimesVecFn mtimes,
# 				   void *mtimes_data);
