# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Int,N::Int)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Int,mu::Int,ml::Int,smu::Int)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Int)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Int)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Int)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p::Ptr{Void})
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Int,n::Int)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Int,smu::Int,ml::Int)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a::Vector{Ptr{realtype}})
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Int)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Int)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Int)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v::Ptr{Void})
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function BandGBTRF(A::DlsMat,p::Ptr{Clong})
    ccall((:BandGBTRF,sundials_band),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function bandGBTRF(a::Vector{Ptr{realtype}},n::Int,mu::Int,ml::Int,smu::Int,p::Ptr{Clong})
    ccall((:bandGBTRF,sundials_band),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Ptr{Clong}),a,n,mu,ml,smu,p)
end

function BandGBTRS(A::DlsMat,p::Ptr{Clong},b::Vector{realtype})
    ccall((:BandGBTRS,sundials_band),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function bandGBTRS(a::Vector{Ptr{realtype}},n::Int,smu::Int,ml::Int,p::Ptr{Clong},b::Vector{realtype})
    ccall((:bandGBTRS,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong,Clong,Ptr{Clong},Ptr{realtype}),a,n,smu,ml,p,b)
end

function BandCopy(A::DlsMat,B::DlsMat,copymu::Int,copyml::Int)
    ccall((:BandCopy,sundials_band),Void,(DlsMat,DlsMat,Clong,Clong),A,B,copymu,copyml)
end

function bandCopy(a::Vector{Ptr{realtype}},b::Vector{Ptr{realtype}},n::Int,a_smu::Int,b_smu::Int,copymu::Int,copyml::Int)
    ccall((:bandCopy,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong,Clong),a,b,n,a_smu,b_smu,copymu,copyml)
end

function BandScale(c::realtype,A::DlsMat)
    ccall((:BandScale,sundials_band),Void,(realtype,DlsMat),c,A)
end

function bandScale(c::realtype,a::Vector{Ptr{realtype}},n::Int,mu::Int,ml::Int,smu::Int)
    ccall((:bandScale,sundials_band),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong,Clong,Clong),c,a,n,mu,ml,smu)
end

function bandAddIdentity(a::Vector{Ptr{realtype}},n::Int,smu::Int)
    ccall((:bandAddIdentity,sundials_band),Void,(Ptr{Ptr{realtype}},Clong,Clong),a,n,smu)
end

function BandMatvec(A::DlsMat,x::Vector{realtype},y::Vector{realtype})
    ccall((:BandMatvec,sundials_band),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function bandMatvec(a::Vector{Ptr{realtype}},x::Vector{realtype},y::Vector{realtype},n::Int,mu::Int,ml::Int,smu::Int)
    ccall((:bandMatvec,sundials_band),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong,Clong,Clong),a,x,y,n,mu,ml,smu)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_config.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Int,N::Int)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Int,mu::Int,ml::Int,smu::Int)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Int)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Int)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Int)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p::Ptr{Void})
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Int,n::Int)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Int,smu::Int,ml::Int)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a::Vector{Ptr{realtype}})
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Int)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Int)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Int)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v::Ptr{Void})
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function DenseGETRF(A::DlsMat,p::Ptr{Clong})
    ccall((:DenseGETRF,sundials_dense),Clong,(DlsMat,Ptr{Clong}),A,p)
end

function DenseGETRS(A::DlsMat,p::Ptr{Clong},b::Vector{realtype})
    ccall((:DenseGETRS,sundials_dense),Void,(DlsMat,Ptr{Clong},Ptr{realtype}),A,p,b)
end

function denseGETRF(a::Vector{Ptr{realtype}},m::Int,n::Int,p::Ptr{Clong})
    ccall((:denseGETRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{Clong}),a,m,n,p)
end

function denseGETRS(a::Vector{Ptr{realtype}},n::Int,p::Ptr{Clong},b::Vector{realtype})
    ccall((:denseGETRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{Clong},Ptr{realtype}),a,n,p,b)
end

function DensePOTRF(A::DlsMat)
    ccall((:DensePOTRF,sundials_dense),Clong,(DlsMat,),A)
end

function DensePOTRS(A::DlsMat,b::Vector{realtype})
    ccall((:DensePOTRS,sundials_dense),Void,(DlsMat,Ptr{realtype}),A,b)
end

function densePOTRF(a::Vector{Ptr{realtype}},m::Int)
    ccall((:densePOTRF,sundials_dense),Clong,(Ptr{Ptr{realtype}},Clong),a,m)
end

function densePOTRS(a::Vector{Ptr{realtype}},m::Int,b::Vector{realtype})
    ccall((:densePOTRS,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong,Ptr{realtype}),a,m,b)
end

function DenseGEQRF(A::DlsMat,beta::Vector{realtype},wrk::Vector{realtype})
    ccall((:DenseGEQRF,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype}),A,beta,wrk)
end

function DenseORMQR(A::DlsMat,beta::Vector{realtype},vn::Vector{realtype},vm::Vector{realtype},wrk::Vector{realtype})
    ccall((:DenseORMQR,sundials_dense),Cint,(DlsMat,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),A,beta,vn,vm,wrk)
end

function denseGEQRF(a::Vector{Ptr{realtype}},m::Int,n::Int,beta::Vector{realtype},v::Vector{realtype})
    ccall((:denseGEQRF,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype}),a,m,n,beta,v)
end

function denseORMQR(a::Vector{Ptr{realtype}},m::Int,n::Int,beta::Vector{realtype},v::Vector{realtype},w::Vector{realtype},wrk::Vector{realtype})
    ccall((:denseORMQR,sundials_dense),Cint,(Ptr{Ptr{realtype}},Clong,Clong,Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),a,m,n,beta,v,w,wrk)
end

function DenseCopy(A::DlsMat,B::DlsMat)
    ccall((:DenseCopy,sundials_dense),Void,(DlsMat,DlsMat),A,B)
end

function denseCopy(a::Vector{Ptr{realtype}},b::Vector{Ptr{realtype}},m::Int,n::Int)
    ccall((:denseCopy,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{Ptr{realtype}},Clong,Clong),a,b,m,n)
end

function DenseScale(c::realtype,A::DlsMat)
    ccall((:DenseScale,sundials_dense),Void,(realtype,DlsMat),c,A)
end

function denseScale(c::realtype,a::Vector{Ptr{realtype}},m::Int,n::Int)
    ccall((:denseScale,sundials_dense),Void,(realtype,Ptr{Ptr{realtype}},Clong,Clong),c,a,m,n)
end

function denseAddIdentity(a::Vector{Ptr{realtype}},n::Int)
    ccall((:denseAddIdentity,sundials_dense),Void,(Ptr{Ptr{realtype}},Clong),a,n)
end

function DenseMatvec(A::DlsMat,x::Vector{realtype},y::Vector{realtype})
    ccall((:DenseMatvec,sundials_dense),Void,(DlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function denseMatvec(a::Vector{Ptr{realtype}},x::Vector{realtype},y::Vector{realtype},m::Int,n::Int)
    ccall((:denseMatvec,sundials_dense),Void,(Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype},Clong,Clong),a,x,y,m,n)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Int,N::Int)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Int,mu::Int,ml::Int,smu::Int)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Int)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Int)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Int)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p::Ptr{Void})
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Int,n::Int)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Int,smu::Int,ml::Int)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a::Vector{Ptr{realtype}})
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Int)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Int)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Int)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v::Ptr{Void})
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_iterative.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_nvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_pcg.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function PcgMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:PcgMalloc,sundials_pcg),PcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function PcgSolve(mem::PcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},w::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:PcgSolve,sundials_pcg),Cint,(PcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,w,atimes,psolve,res_norm,nli,nps)
end

function PcgFree(mem::PcgMem)
    ccall((:PcgFree,sundials_pcg),Void,(PcgMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_sparse.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function NewDenseMat(M::Int,N::Int)
    ccall((:NewDenseMat,sundials_direct),DlsMat,(Clong,Clong),M,N)
end

function NewBandMat(N::Int,mu::Int,ml::Int,smu::Int)
    ccall((:NewBandMat,sundials_direct),DlsMat,(Clong,Clong,Clong,Clong),N,mu,ml,smu)
end

function DestroyMat(A::DlsMat)
    ccall((:DestroyMat,sundials_direct),Void,(DlsMat,),A)
end

function NewIntArray(N::Int)
    ccall((:NewIntArray,sundials_direct),Ptr{Cint},(Cint,),N)
end

function NewLintArray(N::Int)
    ccall((:NewLintArray,sundials_direct),Ptr{Clong},(Clong,),N)
end

function NewRealArray(N::Int)
    ccall((:NewRealArray,sundials_direct),Ptr{realtype},(Clong,),N)
end

function DestroyArray(p::Ptr{Void})
    ccall((:DestroyArray,sundials_direct),Void,(Ptr{Void},),p)
end

function AddIdentity(A::DlsMat)
    ccall((:AddIdentity,sundials_direct),Void,(DlsMat,),A)
end

function SetToZero(A::DlsMat)
    ccall((:SetToZero,sundials_direct),Void,(DlsMat,),A)
end

function PrintMat(A::DlsMat)
    ccall((:PrintMat,sundials_direct),Void,(DlsMat,),A)
end

function newDenseMat(m::Int,n::Int)
    ccall((:newDenseMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong),m,n)
end

function newBandMat(n::Int,smu::Int,ml::Int)
    ccall((:newBandMat,sundials_direct),Ptr{Ptr{realtype}},(Clong,Clong,Clong),n,smu,ml)
end

function destroyMat(a::Vector{Ptr{realtype}})
    ccall((:destroyMat,sundials_direct),Void,(Ptr{Ptr{realtype}},),a)
end

function newIntArray(n::Int)
    ccall((:newIntArray,sundials_direct),Ptr{Cint},(Cint,),n)
end

function newLintArray(n::Int)
    ccall((:newLintArray,sundials_direct),Ptr{Clong},(Clong,),n)
end

function newRealArray(m::Int)
    ccall((:newRealArray,sundials_direct),Ptr{realtype},(Clong,),m)
end

function destroyArray(v::Ptr{Void})
    ccall((:destroyArray,sundials_direct),Void,(Ptr{Void},),v)
end

function NewSparseMat(M::Int,N::Int,NNZ::Int)
    ccall((:NewSparseMat,sundials_sparse),SlsMat,(Cint,Cint,Cint),M,N,NNZ)
end

function SlsConvertDls(A::DlsMat)
    ccall((:SlsConvertDls,sundials_sparse),SlsMat,(DlsMat,),A)
end

function DestroySparseMat(A::SlsMat)
    ccall((:DestroySparseMat,sundials_sparse),Void,(SlsMat,),A)
end

function SlsSetToZero(A::SlsMat)
    ccall((:SlsSetToZero,sundials_sparse),Void,(SlsMat,),A)
end

function CopySparseMat(A::SlsMat,B::SlsMat)
    ccall((:CopySparseMat,sundials_sparse),Void,(SlsMat,SlsMat),A,B)
end

function ScaleSparseMat(b::realtype,A::SlsMat)
    ccall((:ScaleSparseMat,sundials_sparse),Void,(realtype,SlsMat),b,A)
end

function AddIdentitySparseMat(A::SlsMat)
    ccall((:AddIdentitySparseMat,sundials_sparse),Void,(SlsMat,),A)
end

function SlsAddMat(A::SlsMat,B::SlsMat)
    ccall((:SlsAddMat,sundials_sparse),Cint,(SlsMat,SlsMat),A,B)
end

function ReallocSparseMat(A::SlsMat)
    ccall((:ReallocSparseMat,sundials_sparse),Void,(SlsMat,),A)
end

function SlsMatvec(A::SlsMat,x::Vector{realtype},y::Vector{realtype})
    ccall((:SlsMatvec,sundials_sparse),Cint,(SlsMat,Ptr{realtype},Ptr{realtype}),A,x,y)
end

function PrintSparseMat(A::SlsMat)
    ccall((:PrintSparseMat,sundials_sparse),Void,(SlsMat,),A)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function SpbcgMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,sundials_spbcgs),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,sundials_spbcgs),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,sundials_spbcgs),Void,(SpbcgMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spfgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function SpfgmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpfgmrMalloc,sundials_spfgmr),SpfgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpfgmrSolve(mem::SpfgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,gstype::Int,delta::realtype,max_restarts::Int,maxit::Int,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpfgmrSolve,sundials_spfgmr),Cint,(SpfgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,maxit,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpfgmrFree(mem::SpfgmrMem)
    ccall((:SpfgmrFree,sundials_spfgmr),Void,(SpfgmrMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function SpgmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,sundials_spgmr),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,gstype::Int,delta::realtype,max_restarts::Int,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpgmrSolve,sundials_spgmr),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,sundials_spgmr),Void,(SpgmrMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function N_VClone(w::N_Vector)
    ccall((:N_VClone,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VCloneEmpty(w::N_Vector)
    ccall((:N_VCloneEmpty,libsundials_nvecserial),N_Vector,(N_Vector,),w)
end

function N_VDestroy(v::N_Vector)
    ccall((:N_VDestroy,libsundials_nvecserial),Void,(N_Vector,),v)
end

function N_VSpace(v::N_Vector,lrw::Ptr{Clong},liw::Ptr{Clong})
    ccall((:N_VSpace,libsundials_nvecserial),Void,(N_Vector,Ptr{Clong},Ptr{Clong}),v,lrw,liw)
end

function N_VGetArrayPointer(v::N_Vector)
    ccall((:N_VGetArrayPointer,libsundials_nvecserial),Ptr{realtype},(N_Vector,),v)
end

function N_VSetArrayPointer(v_data::Vector{realtype},v::N_Vector)
    ccall((:N_VSetArrayPointer,libsundials_nvecserial),Void,(Ptr{realtype},N_Vector),v_data,v)
end

function N_VLinearSum(a::realtype,x::N_Vector,b::realtype,y::N_Vector,z::N_Vector)
    ccall((:N_VLinearSum,libsundials_nvecserial),Void,(realtype,N_Vector,realtype,N_Vector,N_Vector),a,x,b,y,z)
end

function N_VConst(c::realtype,z::N_Vector)
    ccall((:N_VConst,libsundials_nvecserial),Void,(realtype,N_Vector),c,z)
end

function N_VProd(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VProd,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VDiv(x::N_Vector,y::N_Vector,z::N_Vector)
    ccall((:N_VDiv,libsundials_nvecserial),Void,(N_Vector,N_Vector,N_Vector),x,y,z)
end

function N_VScale(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VScale,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VAbs(x::N_Vector,z::N_Vector)
    ccall((:N_VAbs,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VInv(x::N_Vector,z::N_Vector)
    ccall((:N_VInv,libsundials_nvecserial),Void,(N_Vector,N_Vector),x,z)
end

function N_VAddConst(x::N_Vector,b::realtype,z::N_Vector)
    ccall((:N_VAddConst,libsundials_nvecserial),Void,(N_Vector,realtype,N_Vector),x,b,z)
end

function N_VDotProd(x::N_Vector,y::N_Vector)
    ccall((:N_VDotProd,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,y)
end

function N_VMaxNorm(x::N_Vector)
    ccall((:N_VMaxNorm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWrmsNorm(x::N_Vector,w::N_Vector)
    ccall((:N_VWrmsNorm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VWrmsNormMask(x::N_Vector,w::N_Vector,id::N_Vector)
    ccall((:N_VWrmsNormMask,libsundials_nvecserial),realtype,(N_Vector,N_Vector,N_Vector),x,w,id)
end

function N_VMin(x::N_Vector)
    ccall((:N_VMin,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VWL2Norm(x::N_Vector,w::N_Vector)
    ccall((:N_VWL2Norm,libsundials_nvecserial),realtype,(N_Vector,N_Vector),x,w)
end

function N_VL1Norm(x::N_Vector)
    ccall((:N_VL1Norm,libsundials_nvecserial),realtype,(N_Vector,),x)
end

function N_VCompare(c::realtype,x::N_Vector,z::N_Vector)
    ccall((:N_VCompare,libsundials_nvecserial),Void,(realtype,N_Vector,N_Vector),c,x,z)
end

function N_VInvTest(x::N_Vector,z::N_Vector)
    ccall((:N_VInvTest,libsundials_nvecserial),Cint,(N_Vector,N_Vector),x,z)
end

function N_VConstrMask(c::N_Vector,x::N_Vector,m::N_Vector)
    ccall((:N_VConstrMask,libsundials_nvecserial),Cint,(N_Vector,N_Vector,N_Vector),c,x,m)
end

function N_VMinQuotient(num::N_Vector,denom::N_Vector)
    ccall((:N_VMinQuotient,libsundials_nvecserial),realtype,(N_Vector,N_Vector),num,denom)
end

function N_VCloneEmptyVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneEmptyVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VCloneVectorArray(count::Int,w::N_Vector)
    ccall((:N_VCloneVectorArray,libsundials_nvecserial),Ptr{N_Vector},(Cint,N_Vector),count,w)
end

function N_VDestroyVectorArray(vs::Ptr{N_Vector},count::Int)
    ccall((:N_VDestroyVectorArray,libsundials_nvecserial),Void,(Ptr{N_Vector},Cint),vs,count)
end

function ModifiedGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype})
    ccall((:ModifiedGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype}),v,h,k,p,new_vk_norm)
end

function ClassicalGS(v::Ptr{N_Vector},h::Vector{Ptr{realtype}},k::Int,p::Int,new_vk_norm::Vector{realtype},temp::N_Vector,s::Vector{realtype})
    ccall((:ClassicalGS,sundials_iterative),Cint,(Ptr{N_Vector},Ptr{Ptr{realtype}},Cint,Cint,Ptr{realtype},N_Vector,Ptr{realtype}),v,h,k,p,new_vk_norm,temp,s)
end

function QRfact(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},job::Int)
    ccall((:QRfact,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Cint),n,h,q,job)
end

function QRsol(n::Int,h::Vector{Ptr{realtype}},q::Vector{realtype},b::Vector{realtype})
    ccall((:QRsol,sundials_iterative),Cint,(Cint,Ptr{Ptr{realtype}},Ptr{realtype},Ptr{realtype}),n,h,q,b)
end

function SptfqmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,sundials_sptfqmr),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SptfqmrSolve,sundials_sptfqmr),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,sundials_sptfqmr),Void,(SptfqmrMem,),mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_types.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_fnvector.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/sundials/sundials_math.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SUNRpowerI(base::realtype,exponent::Int)
    ccall((:SUNRpowerI,sundials_math),realtype,(realtype,Cint),base,exponent)
end

function SUNRpowerR(base::realtype,exponent::realtype)
    ccall((:SUNRpowerR,sundials_math),realtype,(realtype,realtype),base,exponent)
end

function SUNRsqrt(x::realtype)
    ccall((:SUNRsqrt,sundials_math),realtype,(realtype,),x)
end

function SUNRabs(x::realtype)
    ccall((:SUNRabs,sundials_math),realtype,(realtype,),x)
end

function SUNRexp(x::realtype)
    ccall((:SUNRexp,sundials_math),realtype,(realtype,),x)
end
