
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

# header: /usr/local/include/cvodes/cvodes_band.h
@ctypedef CVDlsDenseJacFnB Ptr{:Void}
@ctypedef CVDlsBandJacFnB Ptr{:Void}
@c Int32 CVDlsSetDenseJacFnB (Ref{:None},:Int32,:CVDlsDenseJacFnB) shlib
@c Int32 CVDlsSetBandJacFnB (Ref{:None},:Int32,:CVDlsBandJacFnB) shlib
@c Int32 CVBandB (Ref{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bandpre.h
@c Int32 CVBandPrecInitB (Ref{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_bbdpre.h
@ctypedef CVLocalFnB Ptr{:Void}
@ctypedef CVCommFnB Ptr{:Void}
@c Int32 CVBBDPrecInitB (Ref{:None},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:CVLocalFnB,:CVCommFnB) shlib
@c Int32 CVBBDPrecReInitB (Ref{:None},:Int32,:Clong,:Clong,:realtype) shlib

# header: /usr/local/include/cvodes/cvodes_dense.h
@c Int32 CVDenseB (Ref{:None},:Int32,:Clong) shlib

# header: /usr/local/include/cvodes/cvodes_diag.h
@c Int32 CVDiagB (Ref{:None},:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_direct.h

# header: /usr/local/include/cvodes/cvodes.h
@ctypedef CVQuadRhsFn Ptr{:Void}
@ctypedef CVSensRhsFn Ptr{:Void}
@ctypedef CVSensRhs1Fn Ptr{:Void}
@ctypedef CVQuadSensRhsFn Ptr{:Void}
@ctypedef CVRhsFnB Ptr{:Void}
@ctypedef CVRhsFnBS Ptr{:Void}
@ctypedef CVQuadRhsFnB Ptr{:Void}
@ctypedef CVQuadRhsFnBS Ptr{:Void}
@c Int32 CVodeQuadInit (Ref{:None},:CVQuadRhsFn,:N_Vector) shlib
@c Int32 CVodeQuadReInit (Ref{:None},:N_Vector) shlib
@c Int32 CVodeQuadSStolerances (Ref{:None},:realtype,:realtype) shlib
@c Int32 CVodeQuadSVtolerances (Ref{:None},:realtype,:N_Vector) shlib
@c Int32 CVodeSensInit (Ref{:None},:Int32,:Int32,:CVSensRhsFn,Ref{:N_Vector}) shlib
@c Int32 CVodeSensInit1 (Ref{:None},:Int32,:Int32,:CVSensRhs1Fn,Ref{:N_Vector}) shlib
@c Int32 CVodeSensReInit (Ref{:None},:Int32,Ref{:N_Vector}) shlib
@c Int32 CVodeSensSStolerances (Ref{:None},:realtype,Ref{:realtype}) shlib
@c Int32 CVodeSensSVtolerances (Ref{:None},:realtype,Ref{:N_Vector}) shlib
@c Int32 CVodeSensEEtolerances (Ref{:None},) shlib
@c Int32 CVodeQuadSensInit (Ref{:None},:CVQuadSensRhsFn,Ref{:N_Vector}) shlib
@c Int32 CVodeQuadSensReInit (Ref{:None},Ref{:N_Vector}) shlib
@c Int32 CVodeQuadSensSStolerances (Ref{:None},:realtype,Ref{:realtype}) shlib
@c Int32 CVodeQuadSensSVtolerances (Ref{:None},:realtype,Ref{:N_Vector}) shlib
@c Int32 CVodeQuadSensEEtolerances (Ref{:None},) shlib
@c None CVodeQuadFree (Ref{:None},) shlib
@c None CVodeSensFree (Ref{:None},) shlib
@c None CVodeQuadSensFree (Ref{:None},) shlib
@c Int32 CVodeSetQuadErrCon (Ref{:None},:Int32) shlib
@c Int32 CVodeSetSensDQMethod (Ref{:None},:Int32,:realtype) shlib
@c Int32 CVodeSetSensErrCon (Ref{:None},:Int32) shlib
@c Int32 CVodeSetSensMaxNonlinIters (Ref{:None},:Int32) shlib
@c Int32 CVodeSetSensParams (Ref{:None},Ref{:realtype},Ref{:realtype},Ref{:Int32}) shlib
@c Int32 CVodeSetQuadSensErrCon (Ref{:None},:Int32) shlib
@c Int32 CVodeSensToggleOff (Ref{:None},) shlib
@c Int32 CVodeGetQuad (Ref{:None},Ref{:realtype},:N_Vector) shlib
@c Int32 CVodeGetQuadDky (Ref{:None},:realtype,:Int32,:N_Vector) shlib
@c Int32 CVodeGetSens (Ref{:None},Ref{:realtype},Ref{:N_Vector}) shlib
@c Int32 CVodeGetSens1 (Ref{:None},Ref{:realtype},:Int32,:N_Vector) shlib
@c Int32 CVodeGetSensDky (Ref{:None},:realtype,:Int32,Ref{:N_Vector}) shlib
@c Int32 CVodeGetSensDky1 (Ref{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSens (Ref{:None},Ref{:realtype},Ref{:N_Vector}) shlib
@c Int32 CVodeGetQuadSens1 (Ref{:None},Ref{:realtype},:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadSensDky (Ref{:None},:realtype,:Int32,Ref{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensDky1 (Ref{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 CVodeGetQuadNumRhsEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetQuadNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetQuadErrWeights (Ref{:None},:N_Vector) shlib
@c Int32 CVodeGetQuadStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNumRhsEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvalsSens (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNumLinSolvSetups (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetSensErrWeights (Ref{:None},Ref{:N_Vector}) shlib
@c Int32 CVodeGetSensStats (Ref{:None},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNumNonlinSolvConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetStgrSensNumNonlinSolvConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetSensNonlinSolvStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumRhsEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetQuadSensNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 CVodeGetQuadSensErrWeights (Ref{:None},Ref{:N_Vector}) shlib
@c Int32 CVodeGetQuadSensStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeAdjInit (Ref{:None},:Clong,:Int32) shlib
@c Int32 CVodeAdjReInit (Ref{:None},) shlib
@c None CVodeAdjFree (Ref{:None},) shlib
@c Int32 CVodeCreateB (Ref{:None},:Int32,:Int32,Ref{:Int32}) shlib
@c Int32 CVodeInitB (Ref{:None},:Int32,:CVRhsFnB,:realtype,:N_Vector) shlib
@c Int32 CVodeInitBS (Ref{:None},:Int32,:CVRhsFnBS,:realtype,:N_Vector) shlib
@c Int32 CVodeReInitB (Ref{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeSStolerancesB (Ref{:None},:Int32,:realtype,:realtype) shlib
@c Int32 CVodeSVtolerancesB (Ref{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeQuadInitB (Ref{:None},:Int32,:CVQuadRhsFnB,:N_Vector) shlib
@c Int32 CVodeQuadInitBS (Ref{:None},:Int32,:CVQuadRhsFnBS,:N_Vector) shlib
@c Int32 CVodeQuadReInitB (Ref{:None},:Int32,:N_Vector) shlib
@c Int32 CVodeQuadSStolerancesB (Ref{:None},:Int32,:realtype,:realtype) shlib
@c Int32 CVodeQuadSVtolerancesB (Ref{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 CVodeF (Ref{:None},:realtype,:N_Vector,Ref{:realtype},:Int32,Ref{:Int32}) shlib
@c Int32 CVodeB (Ref{:None},:realtype,:Int32) shlib
@c Int32 CVodeSetAdjNoSensi (Ref{:None},) shlib
@c Int32 CVodeSetIterTypeB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetUserDataB (Ref{:None},:Int32,Ref{:None}) shlib
@c Int32 CVodeSetMaxOrdB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetMaxNumStepsB (Ref{:None},:Int32,:Clong) shlib
@c Int32 CVodeSetStabLimDetB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVodeSetInitStepB (Ref{:None},:Int32,:realtype) shlib
@c Int32 CVodeSetMinStepB (Ref{:None},:Int32,:realtype) shlib
@c Int32 CVodeSetMaxStepB (Ref{:None},:Int32,:realtype) shlib
@c Int32 CVodeSetQuadErrConB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVodeGetB (Ref{:None},:Int32,Ref{:realtype},:N_Vector) shlib
@c Int32 CVodeGetQuadB (Ref{:None},:Int32,Ref{:realtype},:N_Vector) shlib
@c Ref{:None} CVodeGetAdjCVodeBmem (Ref{:None},:Int32) shlib
@c Int32 CVodeGetAdjY (Ref{:None},:realtype,:N_Vector) shlib
@ctypedef CVadjCheckPointRec Void
@c Int32 CVodeGetAdjCheckPointsInfo (Ref{:None},Ref{:CVadjCheckPointRec}) shlib
@c Int32 CVodeGetAdjDataPointHermite (Ref{:None},:Int32,Ref{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 CVodeGetAdjDataPointPolynomial (Ref{:None},:Int32,Ref{:realtype},Ref{:Int32},:N_Vector) shlib
@c Int32 CVodeGetAdjCurrentCheckPoint (Ref{:None},Ref{Ref{:None}}) shlib

# header: /usr/local/include/cvodes/cvodes_impl.h
@ctypedef CVadjMem Ptr{:Void}
@ctypedef CkpntMem Ptr{:Void}
@ctypedef DtpntMem Ptr{:Void}
@ctypedef CVodeBMem Ptr{:Void}
@ctypedef cvaIMMallocFn Ptr{:Void}
@ctypedef cvaIMFreeFn Ptr{:Void}
@ctypedef cvaIMGetYFn Ptr{:Void}
@ctypedef cvaIMStorePntFn Ptr{:Void}
@ctypedef HermiteDataMem Ptr{:Void}
@ctypedef PolynomialDataMem Ptr{:Void}
@c Int32 cvEwtSet (:N_Vector,:N_Vector,Ref{:None}) shlib
@c None cvProcessError (:CVodeMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None cvErrHandler (:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:None}) shlib
@c Int32 cvSensRhsWrapper (:CVodeMem,:realtype,:N_Vector,:N_Vector,Ref{:N_Vector},Ref{:N_Vector},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1Wrapper (:CVodeMem,:realtype,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhsInternalDQ (:Int32,:realtype,:N_Vector,:N_Vector,Ref{:N_Vector},Ref{:N_Vector},Ref{:None},:N_Vector,:N_Vector) shlib
@c Int32 cvSensRhs1InternalDQ (:Int32,:realtype,:N_Vector,:N_Vector,:Int32,:N_Vector,:N_Vector,Ref{:None},:N_Vector,:N_Vector) shlib

# header: /usr/local/include/cvodes/cvodes_spbcgs.h
@ctypedef CVSpilsPrecSetupFnB Ptr{:Void}
@ctypedef CVSpilsPrecSolveFnB Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFnB Ptr{:Void}
@c Int32 CVSpilsSetPrecTypeB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetGSTypeB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetEpslinB (Ref{:None},:Int32,:realtype) shlib
@c Int32 CVSpilsSetMaxlB (Ref{:None},:Int32,:Int32) shlib
@c Int32 CVSpilsSetPreconditionerB (Ref{:None},:Int32,:CVSpilsPrecSetupFnB,:CVSpilsPrecSolveFnB) shlib
@c Int32 CVSpilsSetJacTimesVecFnB (Ref{:None},:Int32,:CVSpilsJacTimesVecFnB) shlib
@c Int32 CVSpbcgB (Ref{:None},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spgmr.h
@c Int32 CVSpgmrB (Ref{:None},:Int32,:Int32,:Int32) shlib

# header: /usr/local/include/cvodes/cvodes_spils.h

# header: /usr/local/include/cvodes/cvodes_sptfqmr.h
@c Int32 CVSptfqmrB (Ref{:None},:Int32,:Int32,:Int32) shlib

