
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

# header: /usr/local/include/idas/idas_band.h
@ctypedef IDADlsDenseJacFnB Ref{:Void}
@ctypedef IDADlsBandJacFnB Ref{:Void}
@c Int32 IDADlsSetDenseJacFnB (Ref{:None},:Int32,:IDADlsDenseJacFnB) shlib
@c Int32 IDADlsSetBandJacFnB (Ref{:None},:Int32,:IDADlsBandJacFnB) shlib
@c Int32 IDABandB (Ref{:None},:Int32,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/idas/idas_bbdpre.h
@ctypedef IDABBDLocalFnB Ref{:Void}
@ctypedef IDABBDCommFnB Ref{:Void}
@c Int32 IDABBDPrecInitB (Ref{:None},:Int32,:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:IDABBDLocalFnB,:IDABBDCommFnB) shlib
@c Int32 IDABBDPrecReInitB (Ref{:None},:Int32,:Clong,:Clong,:realtype) shlib

# header: /usr/local/include/idas/idas_dense.h
@c Int32 IDADenseB (Ref{:None},:Int32,:Clong) shlib

# header: /usr/local/include/idas/idas_direct.h

# header: /usr/local/include/idas/idas.h
@ctypedef IDAQuadRhsFn Ref{:Void}
@ctypedef IDASensResFn Ref{:Void}
@ctypedef IDAQuadSensRhsFn Ref{:Void}
@ctypedef IDAResFnB Ref{:Void}
@ctypedef IDAResFnBS Ref{:Void}
@ctypedef IDAQuadRhsFnB Ref{:Void}
@ctypedef IDAQuadRhsFnBS Ref{:Void}
@c Int32 IDASetQuadErrCon (Ref{:None},:Int32) shlib
@c Int32 IDAQuadInit (Ref{:None},:IDAQuadRhsFn,:N_Vector) shlib
@c Int32 IDAQuadReInit (Ref{:None},:N_Vector) shlib
@c Int32 IDAQuadSStolerances (Ref{:None},:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerances (Ref{:None},:realtype,:N_Vector) shlib
@c Int32 IDASetSensDQMethod (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASetSensParams (Ref{:None},Ref{:realtype},Ref{:realtype},Ref{:Int32}) shlib
@c Int32 IDASetSensErrCon (Ref{:None},:Int32) shlib
@c Int32 IDASetSensMaxNonlinIters (Ref{:None},:Int32) shlib
@c Int32 IDASensInit (Ref{:None},:Int32,:Int32,:IDASensResFn,Ref{:N_Vector},Ref{:N_Vector}) shlib
@c Int32 IDASensReInit (Ref{:None},:Int32,Ref{:N_Vector},Ref{:N_Vector}) shlib
@c Int32 IDASensToggleOff (Ref{:None},) shlib
@c Int32 IDASensSStolerances (Ref{:None},:realtype,Ref{:realtype}) shlib
@c Int32 IDASensSVtolerances (Ref{:None},:realtype,Ref{:N_Vector}) shlib
@c Int32 IDASensEEtolerances (Ref{:None},) shlib
@c Int32 IDAQuadSensInit (Ref{:None},:IDAQuadSensRhsFn,Ref{:N_Vector}) shlib
@c Int32 IDAQuadSensReInit (Ref{:None},Ref{:N_Vector}) shlib
@c Int32 IDAQuadSensSStolerances (Ref{:None},:realtype,Ref{:realtype}) shlib
@c Int32 IDAQuadSensSVtolerances (Ref{:None},:realtype,Ref{:N_Vector}) shlib
@c Int32 IDAQuadSensEEtolerances (Ref{:None},) shlib
@c Int32 IDASetQuadSensErrCon (Ref{:None},:Int32) shlib
@c Int32 IDAGetQuad (Ref{:None},Ref{:realtype},:N_Vector) shlib
@c Int32 IDAGetQuadDky (Ref{:None},:realtype,:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadNumRhsEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetQuadNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetQuadErrWeights (Ref{:None},:N_Vector) shlib
@c Int32 IDAGetQuadStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDAGetSens (Ref{:None},Ref{:realtype},Ref{:N_Vector}) shlib
@c Int32 IDAGetSens1 (Ref{:None},Ref{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetSensDky (Ref{:None},:realtype,:Int32,Ref{:N_Vector}) shlib
@c Int32 IDAGetSensDky1 (Ref{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c Int32 IDAGetSensConsistentIC (Ref{:None},Ref{:N_Vector},Ref{:N_Vector}) shlib
@c Int32 IDAGetSensNumResEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetNumResEvalsSens (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetSensNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetSensNumLinSolvSetups (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetSensErrWeights (Ref{:None},:N_Vector_S) shlib
@c Int32 IDAGetSensStats (Ref{:None},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvIters (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetSensNumNonlinSolvConvFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetSensNonlinSolvStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDAGetQuadSensNumRhsEvals (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetQuadSensNumErrTestFails (Ref{:None},Ref{:Clong}) shlib
@c Int32 IDAGetQuadSensErrWeights (Ref{:None},Ref{:N_Vector}) shlib
@c Int32 IDAGetQuadSensStats (Ref{:None},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 IDAGetQuadSens (Ref{:None},Ref{:realtype},Ref{:N_Vector}) shlib
@c Int32 IDAGetQuadSens1 (Ref{:None},Ref{:realtype},:Int32,:N_Vector) shlib
@c Int32 IDAGetQuadSensDky (Ref{:None},:realtype,:Int32,Ref{:N_Vector}) shlib
@c Int32 IDAGetQuadSensDky1 (Ref{:None},:realtype,:Int32,:Int32,:N_Vector) shlib
@c None IDAQuadFree (Ref{:None},) shlib
@c None IDASensFree (Ref{:None},) shlib
@c None IDAQuadSensFree (Ref{:None},) shlib
@c Int32 IDAAdjInit (Ref{:None},:Clong,:Int32) shlib
@c Int32 IDAAdjReInit (Ref{:None},) shlib
@c None IDAAdjFree (Ref{:None},) shlib
@c Int32 IDACreateB (Ref{:None},Ref{:Int32}) shlib
@c Int32 IDAInitB (Ref{:None},:Int32,:IDAResFnB,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAInitBS (Ref{:None},:Int32,:IDAResFnBS,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDAReInitB (Ref{:None},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDASStolerancesB (Ref{:None},:Int32,:realtype,:realtype) shlib
@c Int32 IDASVtolerancesB (Ref{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDAQuadInitB (Ref{:None},:Int32,:IDAQuadRhsFnB,:N_Vector) shlib
@c Int32 IDAQuadInitBS (Ref{:None},:Int32,:IDAQuadRhsFnBS,:N_Vector) shlib
@c Int32 IDAQuadReInitB (Ref{:None},:Int32,:N_Vector) shlib
@c Int32 IDAQuadSStolerancesB (Ref{:None},:Int32,:realtype,:realtype) shlib
@c Int32 IDAQuadSVtolerancesB (Ref{:None},:Int32,:realtype,:N_Vector) shlib
@c Int32 IDACalcICB (Ref{:None},:Int32,:realtype,:N_Vector,:N_Vector) shlib
@c Int32 IDACalcICBS (Ref{:None},:Int32,:realtype,:N_Vector,:N_Vector,Ref{:N_Vector},Ref{:N_Vector}) shlib
@c Int32 IDASolveF (Ref{:None},:realtype,Ref{:realtype},:N_Vector,:N_Vector,:Int32,Ref{:Int32}) shlib
@c Int32 IDASolveB (Ref{:None},:realtype,:Int32) shlib
@c Int32 IDASetAdjNoSensi (Ref{:None},) shlib
@c Int32 IDASetUserDataB (Ref{:None},:Int32,Ref{:None}) shlib
@c Int32 IDASetMaxOrdB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDASetMaxNumStepsB (Ref{:None},:Int32,:Clong) shlib
@c Int32 IDASetInitStepB (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASetMaxStepB (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASetSuppressAlgB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDASetIdB (Ref{:None},:Int32,:N_Vector) shlib
@c Int32 IDASetConstraintsB (Ref{:None},:Int32,:N_Vector) shlib
@c Int32 IDASetQuadErrConB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDAGetB (Ref{:None},:Int32,Ref{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetQuadB (Ref{:None},:Int32,Ref{:realtype},:N_Vector) shlib
@c Ref{:None} IDAGetAdjIDABmem (Ref{:None},:Int32) shlib
@c Int32 IDAGetConsistentICB (Ref{:None},:Int32,:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjY (Ref{:None},:realtype,:N_Vector,:N_Vector) shlib
@ctypedef IDAadjCheckPointRec Void
@c Int32 IDAGetAdjCheckPointsInfo (Ref{:None},Ref{:IDAadjCheckPointRec}) shlib
@c Int32 IDAGetAdjDataPointHermite (Ref{:None},:Int32,Ref{:realtype},:N_Vector,:N_Vector) shlib
@c Int32 IDAGetAdjDataPointPolynomial (Ref{:None},:Int32,Ref{:realtype},Ref{:Int32},:N_Vector) shlib
@c Int32 IDAGetAdjCurrentCheckPoint (Ref{:None},Ref{Ref{:None}}) shlib

# header: /usr/local/include/idas/idas_impl.h
@ctypedef IDAadjMem Ref{:Void}
@ctypedef IDABMem Ref{:Void}
@ctypedef IDAAMMallocFn Ref{:Void}
@ctypedef IDAAMFreeFn Ref{:Void}
@ctypedef IDAAGetYFn Ref{:Void}
@ctypedef IDAAStorePntFn Ref{:Void}
@c Int32 IDASensResDQ (:Int32,:realtype,:N_Vector,:N_Vector,:N_Vector,Ref{:N_Vector},Ref{:N_Vector},Ref{:N_Vector},Ref{:None},:N_Vector,:N_Vector,:N_Vector) shlib

# header: /usr/local/include/idas/idas_spbcgs.h
@ctypedef IDASpilsPrecSetupFnB Ref{:Void}
@ctypedef IDASpilsPrecSolveFnB Ref{:Void}
@ctypedef IDASpilsJacTimesVecFnB Ref{:Void}
@c Int32 IDASpilsSetGSTypeB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetMaxRestartsB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetEpsLinB (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASpilsSetMaxlB (Ref{:None},:Int32,:Int32) shlib
@c Int32 IDASpilsSetIncrementFactorB (Ref{:None},:Int32,:realtype) shlib
@c Int32 IDASpilsSetPreconditionerB (Ref{:None},:Int32,:IDASpilsPrecSetupFnB,:IDASpilsPrecSolveFnB) shlib
@c Int32 IDASpilsSetJacTimesVecFnB (Ref{:None},:Int32,:IDASpilsJacTimesVecFnB) shlib
@c Int32 IDASpbcgB (Ref{:None},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spgmr.h
@c Int32 IDASpgmrB (Ref{:None},:Int32,:Int32) shlib

# header: /usr/local/include/idas/idas_spils.h

# header: /usr/local/include/idas/idas_sptfqmr.h
@c Int32 IDASptfqmrB (Ref{:None},:Int32,:Int32) shlib

