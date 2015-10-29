# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,kinsol),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem::Ptr{Void},ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,kinsol),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:KINSetErrFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem::Ptr{Void},ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,kinsol),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem::Ptr{Void},infofp::Ptr{FILE})
    ccall((:KINSetInfoFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem::Ptr{Void},user_data::Ptr{Void})
    ccall((:KINSetUserData,kinsol),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm::Ptr{Void},printfl::Cint)
    ccall((:KINSetPrintLevel,kinsol),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetNumMaxIters(kinmem::Ptr{Void},mxiter::Clong)
    ccall((:KINSetNumMaxIters,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem::Ptr{Void},noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,kinsol),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem::Ptr{Void},noNNIResMon::Cint)
    ccall((:KINSetNoResMon,kinsol),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem::Ptr{Void},msbset::Clong)
    ccall((:KINSetMaxSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem::Ptr{Void},msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem::Ptr{Void},etachoice::Cint)
    ccall((:KINSetEtaForm,kinsol),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem::Ptr{Void},eta::realtype)
    ccall((:KINSetEtaConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem::Ptr{Void},egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem::Ptr{Void},omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem::Ptr{Void},omegaconst::realtype)
    ccall((:KINSetResMonConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem::Ptr{Void},noMinEps::Cint)
    ccall((:KINSetNoMinEps,kinsol),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem::Ptr{Void},mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,kinsol),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem::Ptr{Void},mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem::Ptr{Void},relfunc::realtype)
    ccall((:KINSetRelErrFunc,kinsol),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem::Ptr{Void},fnormtol::realtype)
    ccall((:KINSetFuncNormTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem::Ptr{Void},scsteptol::realtype)
    ccall((:KINSetScaledStepTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem::Ptr{Void},constraints::N_Vector)
    ccall((:KINSetConstraints,kinsol),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem::Ptr{Void},func::KINSysFn)
    ccall((:KINSetSysFunc,kinsol),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem::Ptr{Void},func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,kinsol),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem::Ptr{Void},uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,kinsol),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,kinsol),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem::Ptr{Void},nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem::Ptr{Void},fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem::Ptr{Void},steplength::Ptr{realtype})
    ccall((:KINGetStepLength,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINFree(kinmem::Ptr{Ptr{Void}})
    ccall((:KINFree,kinsol),Void,(Ptr{Ptr{Void}},),kinmem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINDlsSetDenseJacFn(kinmem::Ptr{Void},jac::KINDlsDenseJacFn)
    ccall((:KINDlsSetDenseJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsDenseJacFn),kinmem,jac)
end

function KINDlsSetBandJacFn(kinmem::Ptr{Void},jac::KINDlsBandJacFn)
    ccall((:KINDlsSetBandJacFn,kinsol_direct),Cint,(Ptr{Void},KINDlsBandJacFn),kinmem,jac)
end

function KINDlsGetWorkSpace(kinmem::Ptr{Void},lenrwB::Ptr{Clong},leniwB::Ptr{Clong})
    ccall((:KINDlsGetWorkSpace,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwB,leniwB)
end

function KINDlsGetNumJacEvals(kinmem::Ptr{Void},njevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumJacEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njevalsB)
end

function KINDlsGetNumFuncEvals(kinmem::Ptr{Void},nfevalsB::Ptr{Clong})
    ccall((:KINDlsGetNumFuncEvals,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsB)
end

function KINDlsGetLastFlag(kinmem::Ptr{Void},flag::Ptr{Clong})
    ccall((:KINDlsGetLastFlag,kinsol_direct),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINDlsGetReturnFlagName(flag::Clong)
    ccall((:KINDlsGetReturnFlagName,kinsol_direct),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpilsSetMaxRestarts(kinmem::Ptr{Void},maxrs::Cint)
    ccall((:KINSpilsSetMaxRestarts,kinsol_spils),Cint,(Ptr{Void},Cint),kinmem,maxrs)
end

function KINSpilsSetPreconditioner(kinmem::Ptr{Void},pset::KINSpilsPrecSetupFn,psolve::KINSpilsPrecSolveFn)
    ccall((:KINSpilsSetPreconditioner,kinsol_spils),Cint,(Ptr{Void},KINSpilsPrecSetupFn,KINSpilsPrecSolveFn),kinmem,pset,psolve)
end

function KINSpilsSetJacTimesVecFn(kinmem::Ptr{Void},jtv::KINSpilsJacTimesVecFn)
    ccall((:KINSpilsSetJacTimesVecFn,kinsol_spils),Cint,(Ptr{Void},KINSpilsJacTimesVecFn),kinmem,jtv)
end

function KINSpilsGetWorkSpace(kinmem::Ptr{Void},lenrwSG::Ptr{Clong},leniwSG::Ptr{Clong})
    ccall((:KINSpilsGetWorkSpace,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwSG,leniwSG)
end

function KINSpilsGetNumPrecEvals(kinmem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npevals)
end

function KINSpilsGetNumPrecSolves(kinmem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:KINSpilsGetNumPrecSolves,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,npsolves)
end

function KINSpilsGetNumLinIters(kinmem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:KINSpilsGetNumLinIters,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nliters)
end

function KINSpilsGetNumConvFails(kinmem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:KINSpilsGetNumConvFails,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nlcfails)
end

function KINSpilsGetNumJtimesEvals(kinmem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:KINSpilsGetNumJtimesEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,njvevals)
end

function KINSpilsGetNumFuncEvals(kinmem::Ptr{Void},nfevalsS::Ptr{Clong})
    ccall((:KINSpilsGetNumFuncEvals,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevalsS)
end

function KINSpilsGetLastFlag(kinmem::Ptr{Void},flag::Ptr{Clong})
    ccall((:KINSpilsGetLastFlag,kinsol_spils),Cint,(Ptr{Void},Ptr{Clong}),kinmem,flag)
end

function KINSpilsGetReturnFlagName(flag::Clong)
    ccall((:KINSpilsGetReturnFlagName,kinsol_spils),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINBand(kinmem::Ptr{Void},N::Clong,mupper::Clong,mlower::Clong)
    ccall((:KINBand,kinsol_band),Cint,(Ptr{Void},Clong,Clong,Clong),kinmem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINBBDPrecInit(kinmem::Ptr{Void},Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_uu::realtype,gloc::KINLocalFn,gcomm::KINCommFn)
    ccall((:KINBBDPrecInit,kinsol_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,KINLocalFn,KINCommFn),kinmem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_uu,gloc,gcomm)
end

function KINBBDPrecGetWorkSpace(kinmem::Ptr{Void},lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetWorkSpace,kinsol_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrwBBDP,leniwBBDP)
end

function KINBBDPrecGetNumGfnEvals(kinmem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:KINBBDPrecGetNumGfnEvals,kinsol_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),kinmem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINDense(kinmem::Ptr{Void},N::Clong)
    ccall((:KINDense,kinsol_dense),Cint,(Ptr{Void},Clong),kinmem,N)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINCreate()
    ccall((:KINCreate,kinsol),Ptr{Void},())
end

function KINSetErrHandlerFn(kinmem::Ptr{Void},ehfun::KINErrHandlerFn,eh_data::Ptr{Void})
    ccall((:KINSetErrHandlerFn,kinsol),Cint,(Ptr{Void},KINErrHandlerFn,Ptr{Void}),kinmem,ehfun,eh_data)
end

function KINSetErrFile(kinmem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:KINSetErrFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,errfp)
end

function KINSetInfoHandlerFn(kinmem::Ptr{Void},ihfun::KINInfoHandlerFn,ih_data::Ptr{Void})
    ccall((:KINSetInfoHandlerFn,kinsol),Cint,(Ptr{Void},KINInfoHandlerFn,Ptr{Void}),kinmem,ihfun,ih_data)
end

function KINSetInfoFile(kinmem::Ptr{Void},infofp::Ptr{FILE})
    ccall((:KINSetInfoFile,kinsol),Cint,(Ptr{Void},Ptr{FILE}),kinmem,infofp)
end

function KINSetUserData(kinmem::Ptr{Void},user_data::Ptr{Void})
    ccall((:KINSetUserData,kinsol),Cint,(Ptr{Void},Ptr{Void}),kinmem,user_data)
end

function KINSetPrintLevel(kinmemm::Ptr{Void},printfl::Cint)
    ccall((:KINSetPrintLevel,kinsol),Cint,(Ptr{Void},Cint),kinmemm,printfl)
end

function KINSetNumMaxIters(kinmem::Ptr{Void},mxiter::Clong)
    ccall((:KINSetNumMaxIters,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxiter)
end

function KINSetNoInitSetup(kinmem::Ptr{Void},noInitSetup::Cint)
    ccall((:KINSetNoInitSetup,kinsol),Cint,(Ptr{Void},Cint),kinmem,noInitSetup)
end

function KINSetNoResMon(kinmem::Ptr{Void},noNNIResMon::Cint)
    ccall((:KINSetNoResMon,kinsol),Cint,(Ptr{Void},Cint),kinmem,noNNIResMon)
end

function KINSetMaxSetupCalls(kinmem::Ptr{Void},msbset::Clong)
    ccall((:KINSetMaxSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbset)
end

function KINSetMaxSubSetupCalls(kinmem::Ptr{Void},msbsetsub::Clong)
    ccall((:KINSetMaxSubSetupCalls,kinsol),Cint,(Ptr{Void},Clong),kinmem,msbsetsub)
end

function KINSetEtaForm(kinmem::Ptr{Void},etachoice::Cint)
    ccall((:KINSetEtaForm,kinsol),Cint,(Ptr{Void},Cint),kinmem,etachoice)
end

function KINSetEtaConstValue(kinmem::Ptr{Void},eta::realtype)
    ccall((:KINSetEtaConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,eta)
end

function KINSetEtaParams(kinmem::Ptr{Void},egamma::realtype,ealpha::realtype)
    ccall((:KINSetEtaParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,egamma,ealpha)
end

function KINSetResMonParams(kinmem::Ptr{Void},omegamin::realtype,omegamax::realtype)
    ccall((:KINSetResMonParams,kinsol),Cint,(Ptr{Void},realtype,realtype),kinmem,omegamin,omegamax)
end

function KINSetResMonConstValue(kinmem::Ptr{Void},omegaconst::realtype)
    ccall((:KINSetResMonConstValue,kinsol),Cint,(Ptr{Void},realtype),kinmem,omegaconst)
end

function KINSetNoMinEps(kinmem::Ptr{Void},noMinEps::Cint)
    ccall((:KINSetNoMinEps,kinsol),Cint,(Ptr{Void},Cint),kinmem,noMinEps)
end

function KINSetMaxNewtonStep(kinmem::Ptr{Void},mxnewtstep::realtype)
    ccall((:KINSetMaxNewtonStep,kinsol),Cint,(Ptr{Void},realtype),kinmem,mxnewtstep)
end

function KINSetMaxBetaFails(kinmem::Ptr{Void},mxnbcf::Clong)
    ccall((:KINSetMaxBetaFails,kinsol),Cint,(Ptr{Void},Clong),kinmem,mxnbcf)
end

function KINSetRelErrFunc(kinmem::Ptr{Void},relfunc::realtype)
    ccall((:KINSetRelErrFunc,kinsol),Cint,(Ptr{Void},realtype),kinmem,relfunc)
end

function KINSetFuncNormTol(kinmem::Ptr{Void},fnormtol::realtype)
    ccall((:KINSetFuncNormTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,fnormtol)
end

function KINSetScaledStepTol(kinmem::Ptr{Void},scsteptol::realtype)
    ccall((:KINSetScaledStepTol,kinsol),Cint,(Ptr{Void},realtype),kinmem,scsteptol)
end

function KINSetConstraints(kinmem::Ptr{Void},constraints::N_Vector)
    ccall((:KINSetConstraints,kinsol),Cint,(Ptr{Void},N_Vector),kinmem,constraints)
end

function KINSetSysFunc(kinmem::Ptr{Void},func::KINSysFn)
    ccall((:KINSetSysFunc,kinsol),Cint,(Ptr{Void},KINSysFn),kinmem,func)
end

function KINInit(kinmem::Ptr{Void},func::KINSysFn,tmpl::N_Vector)
    ccall((:KINInit,kinsol),Cint,(Ptr{Void},KINSysFn,N_Vector),kinmem,func,tmpl)
end

function KINSol(kinmem::Ptr{Void},uu::N_Vector,strategy::Cint,u_scale::N_Vector,f_scale::N_Vector)
    ccall((:KINSol,kinsol),Cint,(Ptr{Void},N_Vector,Cint,N_Vector,N_Vector),kinmem,uu,strategy,u_scale,f_scale)
end

function KINGetWorkSpace(kinmem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:KINGetWorkSpace,kinsol),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),kinmem,lenrw,leniw)
end

function KINGetNumNonlinSolvIters(kinmem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:KINGetNumNonlinSolvIters,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nniters)
end

function KINGetNumFuncEvals(kinmem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:KINGetNumFuncEvals,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nfevals)
end

function KINGetNumBetaCondFails(kinmem::Ptr{Void},nbcfails::Ptr{Clong})
    ccall((:KINGetNumBetaCondFails,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbcfails)
end

function KINGetNumBacktrackOps(kinmem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:KINGetNumBacktrackOps,kinsol),Cint,(Ptr{Void},Ptr{Clong}),kinmem,nbacktr)
end

function KINGetFuncNorm(kinmem::Ptr{Void},fnorm::Ptr{realtype})
    ccall((:KINGetFuncNorm,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,fnorm)
end

function KINGetStepLength(kinmem::Ptr{Void},steplength::Ptr{realtype})
    ccall((:KINGetStepLength,kinsol),Cint,(Ptr{Void},Ptr{realtype}),kinmem,steplength)
end

function KINGetReturnFlagName(flag::Clong)
    ccall((:KINGetReturnFlagName,kinsol),Ptr{UInt8},(Clong,),flag)
end

function KINFree(kinmem::Ptr{Ptr{Void}})
    ccall((:KINFree,kinsol),Void,(Ptr{Ptr{Void}},),kinmem)
end

function KINErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},user_data::Ptr{Void})
    ccall((:KINErrHandler,kinsol_impl),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,user_data)
end

function KINInfoHandler(_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},user_data::Ptr{Void})
    ccall((:KINInfoHandler,kinsol_impl),Void,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),_module,_function,msg,user_data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpbcg(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSpbcg,kinsol_spbcgs),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSpgmr(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSpgmr,kinsol_spgmr),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/kinsol/kinsol_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function KINSptfqmr(kinmem::Ptr{Void},maxl::Cint)
    ccall((:KINSptfqmr,kinsol_sptfqmr),Cint,(Ptr{Void},Cint),kinmem,maxl)
end
