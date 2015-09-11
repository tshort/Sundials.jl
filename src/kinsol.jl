
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

# header: /usr/local/include/kinsol/kinsol_band.h
@ctypedef KINDlsDenseJacFn Ref{:Void}
@ctypedef KINDlsBandJacFn Ref{:Void}
@c Int32 KINDlsSetDenseJacFn (Ref{:None},:KINDlsDenseJacFn) shlib
@c Int32 KINDlsSetBandJacFn (Ref{:None},:KINDlsBandJacFn) shlib
@c Int32 KINDlsGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 KINDlsGetNumJacEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINDlsGetNumFuncEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINDlsGetLastFlag (Ref{:None},Ref{:Clong}) shlib
@c Ref{:Uint8} KINDlsGetReturnFlagName (:Clong,) shlib
@c Int32 KINBand (Ref{:None},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_bbdpre.h
@ctypedef KINCommFn Ref{:Void}
@ctypedef KINLocalFn Ref{:Void}
@c Int32 KINBBDPrecInit (Ref{:None},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:KINLocalFn,:KINCommFn) shlib
@c Int32 KINBBDPrecGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 KINBBDPrecGetNumGfnEvals (Ref{:None},Ref{:Clong}) shlib

# header: /usr/local/include/kinsol/kinsol_dense.h
@c Int32 KINDense (Ref{:None},:Clong) shlib

# header: /usr/local/include/kinsol/kinsol_direct.h

# header: /usr/local/include/kinsol/kinsol.h
@ctypedef KINSysFn Ref{:Void}
@ctypedef KINErrHandlerFn Ref{:Void}
@ctypedef KINInfoHandlerFn Ref{:Void}
@c Ref{:None} KINCreate () shlib
@c Int32 KINSetErrHandlerFn (Ref{:None},:KINErrHandlerFn,Ref{:None}) shlib
@c Int32 KINSetErrFile (Ref{:None},Ref{:FILE}) shlib
@c Int32 KINSetInfoHandlerFn (Ref{:None},:KINInfoHandlerFn,Ref{:None}) shlib
@c Int32 KINSetInfoFile (Ref{:None},Ref{:FILE}) shlib
@c Int32 KINSetUserData (Ref{:None},Ref{:None}) shlib
@c Int32 KINSetPrintLevel (Ref{:None},:Int32) shlib
@c Int32 KINSetNumMaxIters (Ref{:None},:Clong) shlib
@c Int32 KINSetNoInitSetup (Ref{:None},:Int32) shlib
@c Int32 KINSetNoResMon (Ref{:None},:Int32) shlib
@c Int32 KINSetMaxSetupCalls (Ref{:None},:Clong) shlib
@c Int32 KINSetMaxSubSetupCalls (Ref{:None},:Clong) shlib
@c Int32 KINSetEtaForm (Ref{:None},:Int32) shlib
@c Int32 KINSetEtaConstValue (Ref{:None},:realtype) shlib
@c Int32 KINSetEtaParams (Ref{:None},:realtype,:realtype) shlib
@c Int32 KINSetResMonParams (Ref{:None},:realtype,:realtype) shlib
@c Int32 KINSetResMonConstValue (Ref{:None},:realtype) shlib
@c Int32 KINSetNoMinEps (Ref{:None},:Int32) shlib
@c Int32 KINSetMaxNewtonStep (Ref{:None},:realtype) shlib
@c Int32 KINSetMaxBetaFails (Ref{:None},:Clong) shlib
@c Int32 KINSetRelErrFunc (Ref{:None},:realtype) shlib
@c Int32 KINSetFuncNormTol (Ref{:None},:realtype) shlib
@c Int32 KINSetScaledStepTol (Ref{:None},:realtype) shlib
@c Int32 KINSetConstraints (Ref{:None},:N_Vector) shlib
@c Int32 KINSetSysFunc (Ref{:None},:KINSysFn) shlib
@c Int32 KINInit (Ref{:None},:KINSysFn,:N_Vector) shlib
@c Int32 KINSol (Ref{:None},:N_Vector,:Int32,:N_Vector,:N_Vector) shlib
@c Int32 KINGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 KINGetNumNonlinSolvIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINGetNumFuncEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINGetNumBetaCondFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINGetNumBacktrackOps (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINGetFuncNorm (Ref{:None},Ref{:realtype}) shlib
@c Int32 KINGetStepLength (Ref{:None},Ref{:realtype}) shlib
@c Ref{:Uint8} KINGetReturnFlagName (:Clong,) shlib
@c None KINFree (Ref{Ref{:None}},) shlib

# header: /usr/local/include/kinsol/kinsol_impl.h
@ctypedef KINMem Ref{:Void}
@c None KINProcessError (:KINMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None KINErrHandler (:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:None}) shlib
@c None KINPrintInfo (:KINMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None KINInfoHandler (Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:None}) shlib

# header: /usr/local/include/kinsol/kinsol_spbcgs.h
@ctypedef KINSpilsPrecSetupFn Ref{:Void}
@ctypedef KINSpilsPrecSolveFn Ref{:Void}
@ctypedef KINSpilsJacTimesVecFn Ref{:Void}
@c Int32 KINSpilsSetMaxRestarts (Ref{:None},:Int32) shlib
@c Int32 KINSpilsSetPreconditioner (Ref{:None},:KINSpilsPrecSetupFn,:KINSpilsPrecSolveFn) shlib
@c Int32 KINSpilsSetJacTimesVecFn (Ref{:None},:KINSpilsJacTimesVecFn) shlib
@c Int32 KINSpilsGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumPrecSolves (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumLinIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumJtimesEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetNumFuncEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 KINSpilsGetLastFlag (Ref{:None},Ref{:Clong}) shlib
@c Ref{:Uint8} KINSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 KINSpbcg (Ref{:None},:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spgmr.h
@c Int32 KINSpgmr (Ref{:None},:Int32) shlib

# header: /usr/local/include/kinsol/kinsol_spils.h

# header: /usr/local/include/kinsol/kinsol_sptfqmr.h
@c Int32 KINSptfqmr (Ref{:None},:Int32) shlib

