
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

# header: /usr/local/include/ida/ida_band.h
@ctypedef IDADlsDenseJacFn Ref{:Void}
@ctypedef IDADlsBandJacFn Ref{:Void}
@c Int32 IDADlsSetDenseJacFn (Ref{:None},:IDADlsDenseJacFn) shlib
@c Int32 IDADlsSetBandJacFn (Ref{:None},:IDADlsBandJacFn) shlib
@c Int32 IDADlsGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDADlsGetNumJacEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDADlsGetNumResEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDADlsGetLastFlag (Ref{:None},Ref{:Clong}) shlib
@c Ref{:Uint8} IDADlsGetReturnFlagName (:Clong,) shlib
@c Int32 IDABand (Ref{:None},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/ida/ida_bbdpre.h
@ctypedef IDABBDLocalFn Ref{:Void}
@ctypedef IDABBDCommFn Ref{:Void}
@c Int32 IDABBDPrecInit (Ref{:None},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:IDABBDLocalFn,:IDABBDCommFn) shlib
@c Int32 IDABBDPrecReInit (Ref{:None},:Clong,:Clong,:realtype) shlib
@c Int32 IDABBDPrecGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDABBDPrecGetNumGfnEvals (Ref{:None},Ref{:Clong}) shlib

# header: /usr/local/include/ida/ida_dense.h
@c Int32 IDADense (Ref{:None},:Clong) shlib

# header: /usr/local/include/ida/ida_direct.h

# header: /usr/local/include/ida/ida.h
@ctypedef IDAResFn Ref{:Void}
@ctypedef IDARootFn Ref{:Void}
@ctypedef IDAEwtFn Ref{:Void}
@ctypedef IDAErrHandlerFn Ref{:Void}
@c Ref{:None} IDACreate () shlib
@c Int32 IDASetErrHandlerFn (Ref{:None},:IDAErrHandlerFn,Ref{:None}) shlib
@c Int32 IDASetErrFile (Ref{:None},Ref{:FILE}) shlib
@c Int32 IDASetUserData (Ref{:None},Ref{:None}) shlib
@c Int32 IDASetMaxOrd (Ref{:None},:Int32) shlib
@c Int32 IDASetMaxNumSteps (Ref{:None},:Clong) shlib
@c Int32 IDASetInitStep (Ref{:None},:realtype) shlib
@c Int32 IDASetMaxStep (Ref{:None},:realtype) shlib
@c Int32 IDASetStopTime (Ref{:None},:realtype) shlib
@c Int32 IDASetNonlinConvCoef (Ref{:None},:realtype) shlib
@c Int32 IDASetMaxErrTestFails (Ref{:None},:Int32) shlib
@c Int32 IDASetMaxNonlinIters (Ref{:None},:Int32) shlib
@c Int32 IDASetMaxConvFails (Ref{:None},:Int32) shlib
@c Int32 IDASetSuppressAlg (Ref{:None},:Int32) shlib
@c Int32 IDASetId (Ref{:None},:N_Vector) shlib
@c Int32 IDASetConstraints (Ref{:None},:N_Vector) shlib
@c Int32 IDASetRootDirection (Ref{:None},Ref{:Int32}) shlib
@c Int32 IDASetNoInactiveRootWarn (Ref{:None},) shlib
@c Int32 IDAInit (Ref{:None},:IDAResFn,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInit (Ref{:None},:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerances (Ref{:None},:realtype,:realtype) shlib
@c Int32 IDASVtolerances (Ref{:None},:realtype,:N_Vector) shlib
@c Int32 IDAWFtolerances (Ref{:None},:IDAEwtFn) shlib
@c Int32 IDASetNonlinConvCoefIC (Ref{:None},:realtype) shlib
@c Int32 IDASetMaxNumStepsIC (Ref{:None},:Int32) shlib
@c Int32 IDASetMaxNumJacsIC (Ref{:None},:Int32) shlib
@c Int32 IDASetMaxNumItersIC (Ref{:None},:Int32) shlib
@c Int32 IDASetLineSearchOffIC (Ref{:None},:Int32) shlib
@c Int32 IDASetStepToleranceIC (Ref{:None},:realtype) shlib
@c Int32 IDARootInit (Ref{:None},:Int32,:IDARootFn) shlib
@c Int32 IDACalcIC (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASolve (Ref{:None},:realtype,Ref{:realtype},:N_Vector,:N_Vector,:Int32) shlib
@c Int32 IDAGetDky (Ref{:None},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDAGetNumSteps (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumResEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumLinSolvSetups (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumBacktrackOps (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetConsistentIC (Ref{:None},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetLastOrder (Ref{:None},Ref{:Int32}) shlib
@c Int32 IDAGetCurrentOrder (Ref{:None},Ref{:Int32}) shlib
@c Int32 IDAGetActualInitStep (Ref{:None},Ref{:realtype}) shlib
@c Int32 IDAGetLastStep (Ref{:None},Ref{:realtype}) shlib
@c Int32 IDAGetCurrentStep (Ref{:None},Ref{:realtype}) shlib
@c Int32 IDAGetCurrentTime (Ref{:None},Ref{:realtype}) shlib
@c Int32 IDAGetTolScaleFactor (Ref{:None},Ref{:realtype}) shlib
@c Int32 IDAGetErrWeights (Ref{:None},:N_Vector) shlib
@c Int32 IDAGetEstLocalErrors (Ref{:None},:N_Vector) shlib
@c Int32 IDAGetNumGEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetRootInfo (Ref{:None},Ref{:Int32}) shlib
@c Int32 IDAGetIntegratorStats (Ref{:None},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Int32},Ref{:Int32},Ref{:realtype},Ref{:realtype},Ref{:realtype},Ref{:realtype}) shlib
@c Int32 IDAGetNumNonlinSolvIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumNonlinSolvConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNonlinSolvStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Ref{:Uint8} IDAGetReturnFlagName (:Clong,) shlib
@c None IDAFree (Ref{Ref{:None}},) shlib

# header: /usr/local/include/ida/ida_impl.h
@ctypedef IDAMem Ref{:Void}
@c Int32 IDAEwtSet (:N_Vector,:N_Vector,Ref{:None}) shlib
@c None IDAProcessError (:IDAMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None IDAErrHandler (:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:None}) shlib

# header: /usr/local/include/ida/ida_spbcgs.h
@ctypedef IDASpilsPrecSetupFn Ref{:Void}
@ctypedef IDASpilsPrecSolveFn Ref{:Void}
@ctypedef IDASpilsJacTimesVecFn Ref{:Void}
@c Int32 IDASpilsSetPreconditioner (Ref{:None},:IDASpilsPrecSetupFn,:IDASpilsPrecSolveFn) shlib
@c Int32 IDASpilsSetJacTimesVecFn (Ref{:None},:IDASpilsJacTimesVecFn) shlib
@c Int32 IDASpilsSetGSType (Ref{:None},:Int32) shlib
@c Int32 IDASpilsSetMaxRestarts (Ref{:None},:Int32) shlib
@c Int32 IDASpilsSetMaxl (Ref{:None},:Int32) shlib
@c Int32 IDASpilsSetEpsLin (Ref{:None},:realtype) shlib
@c Int32 IDASpilsSetIncrementFactor (Ref{:None},:realtype) shlib
@c Int32 IDASpilsGetWorkSpace (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumPrecSolves (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumLinIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumJtimesEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetNumResEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDASpilsGetLastFlag (Ref{:None},Ref{:Clong}) shlib
@c Ref{:Uint8} IDASpilsGetReturnFlagName (:Clong,) shlib
@c Int32 IDASpbcg (Ref{:None},:Int32) shlib

# header: /usr/local/include/ida/ida_spgmr.h
@c Int32 IDASpgmr (Ref{:None},:Int32) shlib

# header: /usr/local/include/ida/ida_spils.h

# header: /usr/local/include/ida/ida_sptfqmr.h
@c Int32 IDASptfqmr (Ref{:None},:Int32) shlib

