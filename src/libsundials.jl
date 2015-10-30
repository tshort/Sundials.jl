# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/shlib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function bandGBTRF(a::Ptr{Ptr{realtype}},n::Clong,mu::Clong,ml::Clong,smu::Clong,p::Ptr{Clong})
    ccall((:bandGBTRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Ptr{Clong}),a,n,mu,ml,smu,p)
end

function BandGBTRS(A::DlsMat,p::Ptr{Clong},b::Ptr{realtype})
    ccall((:BandGBTRS,shlib),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function bandGBTRS(a::Ptr{Ptr{realtype}},n::Clong,smu::Clong,ml::Clong,p::Ptr{Clong},b::Ptr{realtype})
    ccall((:bandGBTRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Ptr{Clong},Ptr{realtype}),a,n,smu,ml,p,b)
end

function BandCopy(A::DlsMat,B::DlsMat,copymu::Clong,copyml::Clong)
    ccall((:BandCopy,shlib),Void,(DlsMat,DlsMat,Clong,Clong),A,B,copymu,copyml)
end

function bandCopy(a::Ptr{Ptr{realtype}},b::Ptr{Ptr{realtype}},n::Clong,a_smu::Clong,b_smu::Clong,copymu::Clong,copyml::Clong)
    ccall((:bandCopy,shlib),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Clong),a,b,n,a_smu,b_smu,copymu,copyml)
end

function BandScale(c::realtype,A::DlsMat)
    ccall((:BandScale,shlib),Void,(realtype,DlsMat),c,A)
end

function bandScale(c::realtype,a::Ptr{Ptr{realtype}},n::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:bandScale,shlib),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong),c,a,n,mu,ml,smu)
end

function bandAddIdentity(a::Ptr{Ptr{realtype}},n::Clong,smu::Clong)
    ccall((:bandAddIdentity,shlib),Void,(Ptr{Ptr{realtype}},Clong,Clong),a,n,smu)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_config.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function DenseGETRF(A::DlsMat,p::Ptr{Clong})
    ccall((:DenseGETRF,shlib),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function DenseGETRS(A::DlsMat,p::Ptr{Clong},b::Ptr{realtype})
    ccall((:DenseGETRS,shlib),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function denseGETRF(a::Ptr{Ptr{realtype}},m::Clong,n::Clong,p::Ptr{Clong})
    ccall((:denseGETRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{Clong}),a,m,n,p)
end

function denseGETRS(a::Ptr{Ptr{realtype}},n::Clong,p::Ptr{Clong},b::Ptr{realtype})
    ccall((:denseGETRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Ptr{Clong},Ptr{realtype}),a,n,p,b)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF,shlib),Clong,(DlsMat,),A)
end

function DensePOTRS(A::DlsMat,b::Ptr{realtype})
    ccall((:DensePOTRS,shlib),Void,(DlsMat,Ptr{realtype}),A,b)
end

function densePOTRF(a::Ptr{Ptr{realtype}},m::Clong)
    ccall((:densePOTRF,shlib),Clong,(Ptr{Ptr{realtype}},Clong),a,m)
end

function densePOTRS(a::Ptr{Ptr{realtype}},m::Clong,b::Ptr{realtype})
    ccall((:densePOTRS,shlib),Void,(Ptr{Ptr{realtype}},Clong,Ptr{realtype}),a,m,b)
end

function DenseGEQRF(A::DlsMat,beta::Ptr{realtype},wrk::Ptr{realtype})
    ccall((:DenseGEQRF,shlib),Cint,(DlsMat,Ptr{realtype},Ptr{realtype}),A,beta,wrk)
end

function DenseORMQR(A::DlsMat,beta::Ptr{realtype},vn::Ptr{realtype},vm::Ptr{realtype},wrk::Ptr{realtype})
    ccall((:DenseORMQR,shlib),Cint,(DlsMat,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),A,beta,vn,vm,wrk)
end

function denseGEQRF(a::Ptr{Ptr{realtype}},m::Clong,n::Clong,beta::Ptr{realtype},v::Ptr{realtype})
    ccall((:denseGEQRF,shlib),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype}),a,m,n,beta,v)
end

function denseORMQR(a::Ptr{Ptr{realtype}},m::Clong,n::Clong,beta::Ptr{realtype},v::Ptr{realtype},w::Ptr{realtype},wrk::Ptr{realtype})
    ccall((:denseORMQR,shlib),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),a,m,n,beta,v,w,wrk)
end

function DenseCopy(A::DlsMat,B::DlsMat)
    ccall((:DenseCopy,shlib),Void,(DlsMat,DlsMat),A,B)
end

function denseCopy(a::Ptr{Ptr{realtype}},b::Ptr{Ptr{realtype}},m::Clong,n::Clong)
    ccall((:denseCopy,shlib),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong),a,b,m,n)
end

function DenseScale(c::realtype,A::DlsMat)
    ccall((:DenseScale,shlib),Void,(realtype,DlsMat),c,A)
end

function denseScale(c::realtype,a::Ptr{Ptr{realtype}},m::Clong,n::Clong)
    ccall((:denseScale,shlib),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong),c,a,m,n)
end

function denseAddIdentity(a::Ptr{Ptr{realtype}},n::Clong)
    ccall((:denseAddIdentity,shlib),Void,(Ptr{Ptr{realtype}},Clong),a,n)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Clong,N::Clong)
    ccall((:NewDenseMat,shlib),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Clong,mu::Clong,ml::Clong,smu::Clong)
    ccall((:NewBandMat,shlib),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,shlib),Void,(DlsMat,),A)
end

function NewIntArray(N::Cint)
    ccall((:NewIntArray,shlib),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Clong)
    ccall((:NewLintArray,shlib),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Clong)
    ccall((:NewRealArray,shlib),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p::Ptr{Void})
    ccall((:DestroyArray,shlib),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,shlib),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,shlib),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,shlib),Void,(DlsMat,),A)
end

function newDenseMat(m::Clong,n::Clong)
    ccall((:newDenseMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Clong,smu::Clong,ml::Clong)
    ccall((:newBandMat,shlib),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a::Ptr{Ptr{realtype}})
    ccall((:destroyMat,shlib),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Cint)
    ccall((:newIntArray,shlib),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Clong)
    ccall((:newLintArray,shlib),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Clong)
    ccall((:newRealArray,shlib),Ptr{realtype},(Clong,),m)
end

function destroyArray(v::Ptr{Void})
    ccall((:destroyArray,shlib),Void,(Ptr{Void},),v)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_iterative.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function ModifiedGS(v::Ptr{N_Vector},h::Ptr{Ptr{realtype}},k::Cint,p::Cint,new_vk_norm::Ptr{realtype})
    ccall((:ModifiedGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Ptr{Ptr{realtype}},k::Cint,p::Cint,new_vk_norm::Ptr{realtype},temp::N_Vector,s::Ptr{realtype})
    ccall((:ClassicalGS,shlib),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Cint,h::Ptr{Ptr{realtype}},q::Ptr{realtype},job::Cint)
    ccall((:QRfact,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Cint,h::Ptr{Ptr{realtype}},q::Ptr{realtype},b::Ptr{realtype})
    ccall((:QRsol,shlib),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,shlib),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpgmrSolve,shlib),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,shlib),Void,(SpgmrMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SptfqmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,shlib),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SptfqmrSolve,shlib),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,shlib),Void,(SptfqmrMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_fnvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_math.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function RPowerI(base::realtype,exponent::Cint)
    ccall((:RPowerI,shlib),realtype,(realtype,Cint),base,exponent)
end

function RPowerR(base::realtype,exponent::realtype)
    ccall((:RPowerR,shlib),realtype,(realtype,realtype),base,exponent)
end

function RSqrt(x::realtype)
    ccall((:RSqrt,shlib),realtype,(realtype,),x)
end

function RAbs(x::realtype)
    ccall((:RAbs,shlib),realtype,(realtype,),x)
end

function RExp(x::realtype)
    ccall((:RExp,shlib),realtype,(realtype,),x)
end
