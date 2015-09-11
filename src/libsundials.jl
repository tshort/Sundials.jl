
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

# header: /usr/local/include/sundials/sundials_band.h
@ctypedef DlsMat Ptr{:Void}
@c DlsMat NewDenseMat (:Clong,:Clong) shlib
@c DlsMat NewBandMat (:Clong,:Clong,:Clong,:Clong) shlib
@c None DestroyMat (:DlsMat,) shlib
@c Ref{:Int32} NewIntArray (:Int32,) shlib
@c Ref{:Clong} NewLintArray (:Clong,) shlib
@c Ref{:realtype} NewRealArray (:Clong,) shlib
@c None DestroyArray (Ref{:None},) shlib
@c None AddIdentity (:DlsMat,) shlib
@c None SetToZero (:DlsMat,) shlib
@c None PrintMat (:DlsMat,) shlib
@c Ref{Ref{:realtype}} newDenseMat (:Clong,:Clong) shlib
@c Ref{Ref{:realtype}} newBandMat (:Clong,:Clong,:Clong) shlib
@c None destroyMat (Ref{Ref{:realtype}},) shlib
@c Ref{:Int32} newIntArray (:Int32,) shlib
@c Ref{:Clong} newLintArray (:Clong,) shlib
@c Ref{:realtype} newRealArray (:Clong,) shlib
@c None destroyArray (Ref{:None},) shlib
@c Clong BandGBTRF (:DlsMat,Ref{:Clong}) shlib
@c Clong bandGBTRF (Ref{Ref{:realtype}},:Clong,:Clong,:Clong,:Clong,Ref{:Clong}) shlib
@c None BandGBTRS (:DlsMat,Ref{:Clong},Ref{:realtype}) shlib
@c None bandGBTRS (Ref{Ref{:realtype}},:Clong,:Clong,:Clong,Ref{:Clong},Ref{:realtype}) shlib
@c None BandCopy (:DlsMat,:DlsMat,:Clong,:Clong) shlib
@c None bandCopy (Ref{Ref{:realtype}},Ref{Ref{:realtype}},:Clong,:Clong,:Clong,:Clong,:Clong) shlib
@c None BandScale (:realtype,:DlsMat) shlib
@c None bandScale (:realtype,Ref{Ref{:realtype}},:Clong,:Clong,:Clong,:Clong) shlib
@c None bandAddIdentity (Ref{Ref{:realtype}},:Clong,:Clong) shlib

# header: /usr/local/include/sundials/sundials_config.h

# header: /usr/local/include/sundials/sundials_dense.h
@c Clong DenseGETRF (:DlsMat,Ref{:Clong}) shlib
@c None DenseGETRS (:DlsMat,Ref{:Clong},Ref{:realtype}) shlib
@c Clong denseGETRF (Ref{Ref{:realtype}},:Clong,:Clong,Ref{:Clong}) shlib
@c None denseGETRS (Ref{Ref{:realtype}},:Clong,Ref{:Clong},Ref{:realtype}) shlib
@c Clong DensePOTRF (:DlsMat,) shlib
@c None DensePOTRS (:DlsMat,Ref{:realtype}) shlib
@c Clong densePOTRF (Ref{Ref{:realtype}},:Clong) shlib
@c None densePOTRS (Ref{Ref{:realtype}},:Clong,Ref{:realtype}) shlib
@c Int32 DenseGEQRF (:DlsMat,Ref{:realtype},Ref{:realtype}) shlib
@c Int32 DenseORMQR (:DlsMat,Ref{:realtype},Ref{:realtype},Ref{:realtype},Ref{:realtype}) shlib
@c Int32 denseGEQRF (Ref{Ref{:realtype}},:Clong,:Clong,Ref{:realtype},Ref{:realtype}) shlib
@c Int32 denseORMQR (Ref{Ref{:realtype}},:Clong,:Clong,Ref{:realtype},Ref{:realtype},Ref{:realtype},Ref{:realtype}) shlib
@c None DenseCopy (:DlsMat,:DlsMat) shlib
@c None denseCopy (Ref{Ref{:realtype}},Ref{Ref{:realtype}},:Clong,:Clong) shlib
@c None DenseScale (:realtype,:DlsMat) shlib
@c None denseScale (:realtype,Ref{Ref{:realtype}},:Clong,:Clong) shlib
@c None denseAddIdentity (Ref{Ref{:realtype}},:Clong) shlib

# header: /usr/local/include/sundials/sundials_direct.h

# header: /usr/local/include/sundials/sundials_fnvector.h

# header: /usr/local/include/sundials/sundials_iterative.h
# enum ANONYMOUS
@ctypedef ANONYMOUS Uint32
const PREC_NONE = 0
const PREC_LEFT = 1
const PREC_RIGHT = 2
const PREC_BOTH = 3
# end
# enum ATimesFn
@ctypedef ATimesFn Uint32
const MODIFIED_GS = 1
const CLASSICAL_GS = 2
# end
@ctypedef PSolveFn Ref{:Void}
@c Int32 ModifiedGS (Ref{:N_Vector},Ref{Ref{:realtype}},:Int32,:Int32,Ref{:realtype}) shlib
@c Int32 ClassicalGS (Ref{:N_Vector},Ref{Ref{:realtype}},:Int32,:Int32,Ref{:realtype},:N_Vector,Ref{:realtype}) shlib
@c Int32 QRfact (:Int32,Ref{Ref{:realtype}},Ref{:realtype},:Int32) shlib
@c Int32 QRsol (:Int32,Ref{Ref{:realtype}},Ref{:realtype},Ref{:realtype}) shlib

# header: /usr/local/include/sundials/sundials_math.h
@c realtype RPowerI (:realtype,:Int32) shlib
@c realtype RPowerR (:realtype,:realtype) shlib
@c realtype RSqrt (:realtype,) shlib
@c realtype RAbs (:realtype,) shlib
@c realtype RExp (:realtype,) shlib

# header: /usr/local/include/sundials/sundials_nvector.h

# header: /usr/local/include/sundials/sundials_spbcgs.h
@ctypedef SpbcgMemRec Void
@ctypedef SpbcgMem Ptr{:Void}
@c SpbcgMem SpbcgMalloc (:Int32,:N_Vector) shlib
@c Int32 SpbcgSolve (:SpbcgMem,Ref{:None},:N_Vector,:N_Vector,:Int32,:realtype,Ref{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ref{:realtype},Ref{:Int32},Ref{:Int32}) shlib
@c None SpbcgFree (:SpbcgMem,) shlib

# header: /usr/local/include/sundials/sundials_spgmr.h
@ctypedef SpgmrMemRec Void
@ctypedef SpgmrMem Ptr{:Void}
@c SpgmrMem SpgmrMalloc (:Int32,:N_Vector) shlib
@c Int32 SpgmrSolve (:SpgmrMem,Ref{:None},:N_Vector,:N_Vector,:Int32,:Int32,:realtype,:Int32,Ref{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ref{:realtype},Ref{:Int32},Ref{:Int32}) shlib
@c None SpgmrFree (:SpgmrMem,) shlib

# header: /usr/local/include/sundials/sundials_sptfqmr.h
@ctypedef SptfqmrMemRec Void
@ctypedef SptfqmrMem Ptr{:Void}
@c SptfqmrMem SptfqmrMalloc (:Int32,:N_Vector) shlib
@c Int32 SptfqmrSolve (:SptfqmrMem,Ref{:None},:N_Vector,:N_Vector,:Int32,:realtype,Ref{:None},:N_Vector,:N_Vector,:ATimesFn,:PSolveFn,Ref{:realtype},Ref{:Int32},Ref{:Int32}) shlib
@c None SptfqmrFree (:SptfqmrMem,) shlib

# header: /usr/local/include/sundials/sundials_types.h

