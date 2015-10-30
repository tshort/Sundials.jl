# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,shlib),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem::Ptr{Void},ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,shlib),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem::Ptr{Void},errfp::Ptr{Void})
    ccall((:KINSetErrFile,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem::Ptr{Void},ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,shlib),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem::Ptr{Void},infofp::Ptr{Void})
    ccall((:KINSetInfoFile,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,infofp)
end

function KINSetUserData(kinmem::Ptr{Void},user_data::Ptr{Void})
    ccall((:KINSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm::Ptr{Void},printfl::Cint)
    ccall((:KINSetPrintLevel,shlib),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetNumMaxIters(kinmem::Ptr{Void},mxiter::Clong)
    ccall((:KINSetNumMaxIters,shlib),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem::Ptr{Void},noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,shlib),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem::Ptr{Void},noNNIResMon::Cint)
    ccall((:KINSetNoResMon,shlib),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem::Ptr{Void},msbset::Clong)
    ccall((:KINSetMaxSetupCalls,shlib),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem::Ptr{Void},msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,shlib),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem::Ptr{Void},etachoice::Cint)
    ccall((:KINSetEtaForm,shlib),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem::Ptr{Void},eta::realtype)
    ccall((:KINSetEtaConstValue,shlib),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem::Ptr{Void},egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,shlib),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem::Ptr{Void},omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,shlib),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem::Ptr{Void},omegaconst::realtype)
    ccall((:KINSetResMonConstValue,shlib),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem::Ptr{Void},noMinEps::Cint)
    ccall((:KINSetNoMinEps,shlib),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem::Ptr{Void},mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,shlib),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem::Ptr{Void},mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,shlib),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem::Ptr{Void},relfunc::realtype)
    ccall((:KINSetRelErrFunc,shlib),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem::Ptr{Void},fnormtol::realtype)
    ccall((:KINSetFuncNormTol,shlib),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem::Ptr{Void},scsteptol::realtype)
    ccall((:KINSetScaledStepTol,shlib),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem::Ptr{Void},constraints::N_Vector)
    ccall((:KINSetConstraints,shlib),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem::Ptr{Void},func::KINSysFn)
    ccall((:KINSetSysFunc,shlib),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem::Ptr{Void},func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,shlib),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem::Ptr{Void},uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,shlib),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem::Ptr{Void},nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem::Ptr{Void},fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,shlib),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem::Ptr{Void},steplength::Ptr{realtype})
    ccall((:KINGetStepLength,shlib),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function KINFree(kinmem::Ptr{Ptr{Void}})
    ccall((:KINFree,shlib),Void,(Ptr{Ptr{Void}},),kinmem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINDlsSetDenseJacFn(kinmem::Ptr{Void},jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,shlib),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem::Ptr{Void},jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,shlib),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem::Ptr{Void},lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem::Ptr{Void},njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem::Ptr{Void},nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem::Ptr{Void},flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpilsSetMaxRestarts(kinmem::Ptr{Void},maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::Ptr{Void},pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,shlib),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::Ptr{Void},jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::Ptr{Void},lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::Ptr{Void},nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::Ptr{Void},flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINBand(kinmem::Ptr{Void},N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),kinmem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINBBDPrecInit(kinmem::Ptr{Void},Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem::Ptr{Void},lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINDense(kinmem::Ptr{Void},N::Clong)
    ccall((:KINDense,shlib),Cint,(Ptr{Void},Clong),kinmem,N)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,shlib),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem::Ptr{Void},ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,shlib),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem::Ptr{Void},errfp::Ptr{Void})
    ccall((:KINSetErrFile,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem::Ptr{Void},ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,shlib),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem::Ptr{Void},infofp::Ptr{Void})
    ccall((:KINSetInfoFile,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,infofp)
end

function KINSetUserData(kinmem::Ptr{Void},user_data::Ptr{Void})
    ccall((:KINSetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm::Ptr{Void},printfl::Cint)
    ccall((:KINSetPrintLevel,shlib),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetNumMaxIters(kinmem::Ptr{Void},mxiter::Clong)
    ccall((:KINSetNumMaxIters,shlib),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem::Ptr{Void},noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,shlib),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem::Ptr{Void},noNNIResMon::Cint)
    ccall((:KINSetNoResMon,shlib),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem::Ptr{Void},msbset::Clong)
    ccall((:KINSetMaxSetupCalls,shlib),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem::Ptr{Void},msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,shlib),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem::Ptr{Void},etachoice::Cint)
    ccall((:KINSetEtaForm,shlib),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem::Ptr{Void},eta::realtype)
    ccall((:KINSetEtaConstValue,shlib),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem::Ptr{Void},egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,shlib),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem::Ptr{Void},omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,shlib),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem::Ptr{Void},omegaconst::realtype)
    ccall((:KINSetResMonConstValue,shlib),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem::Ptr{Void},noMinEps::Cint)
    ccall((:KINSetNoMinEps,shlib),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem::Ptr{Void},mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,shlib),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem::Ptr{Void},mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,shlib),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem::Ptr{Void},relfunc::realtype)
    ccall((:KINSetRelErrFunc,shlib),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem::Ptr{Void},fnormtol::realtype)
    ccall((:KINSetFuncNormTol,shlib),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem::Ptr{Void},scsteptol::realtype)
    ccall((:KINSetScaledStepTol,shlib),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem::Ptr{Void},constraints::N_Vector)
    ccall((:KINSetConstraints,shlib),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem::Ptr{Void},func::KINSysFn)
    ccall((:KINSetSysFunc,shlib),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem::Ptr{Void},func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,shlib),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem::Ptr{Void},uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,shlib),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem::Ptr{Void},nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem::Ptr{Void},fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,shlib),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem::Ptr{Void},steplength::Ptr{realtype})
    ccall((:KINGetStepLength,shlib),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function KINFree(kinmem::Ptr{Ptr{Void}})
    ccall((:KINFree,shlib),Void,(Ptr{Ptr{Void}},),kinmem)
end

function KINErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},user_data::Ptr{Void})
    ccall((:KINErrHandler,shlib),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,user_data)
end

function KINInfoHandler(_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},user_data::Ptr{Void})
    ccall((:KINInfoHandler,shlib),Void,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),_module,_function,msg,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpbcg(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSpbcg,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpgmr(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSpgmr,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSptfqmr(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSptfqmr,shlib),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
