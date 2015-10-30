# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDACreate()
    ccall((:IDACreate,shlib),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem::Ptr{Void},ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,shlib),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::Ptr{Void},errfp::Ptr{Void})
    ccall((:IDASetErrFile,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:IDASetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::Ptr{Void},maxord::Cint)
    ccall((:IDASetMaxOrd,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::Ptr{Void},mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::Ptr{Void},hin::realtype)
    ccall((:IDASetInitStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::Ptr{Void},hmax::realtype)
    ccall((:IDASetMaxStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::Ptr{Void},tstop::realtype)
    ccall((:IDASetStopTime,shlib),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::Ptr{Void},epcon::realtype)
    ccall((:IDASetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::Ptr{Void},maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::Ptr{Void},maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::Ptr{Void},maxncf::Cint)
    ccall((:IDASetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::Ptr{Void},suppressalg::Cint)
    ccall((:IDASetSuppressAlg,shlib),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::Ptr{Void},id::N_Vector)
    ccall((:IDASetId,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::Ptr{Void},constraints::N_Vector)
    ccall((:IDASetConstraints,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::Ptr{Void})
    ccall((:IDASetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem::Ptr{Void},res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,shlib),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::Ptr{Void},t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::Ptr{Void},efun::IDAEwtFn)
    ccall((:IDAWFtolerances,shlib),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::Ptr{Void},epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::Ptr{Void},maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::Ptr{Void},maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::Ptr{Void},maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::Ptr{Void},lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::Ptr{Void},steptol::realtype)
    ccall((:IDASetStepToleranceIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::Ptr{Void},nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,shlib),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem::Ptr{Void},icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::Ptr{Void},tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::Ptr{Void},nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::Ptr{Void},yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,shlib),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::Ptr{Void},klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::Ptr{Void},kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::Ptr{Void},tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::Ptr{Void},eweight::N_Vector)
    ccall((:IDAGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::Ptr{Void},ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::Ptr{Void},nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ptr{Ptr{Void}})
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::Ptr{Void},jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,shlib),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::Ptr{Void},jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,shlib),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::Ptr{Void},njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::Ptr{Void},pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,shlib),Cint,(Ptr{Void},IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::Ptr{Void},jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,shlib),Cint,(Ptr{Void},IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::Ptr{Void},gstype::Cint)
    ccall((:IDASpilsSetGSType,shlib),Cint,(Ptr{Void},Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::Ptr{Void},maxrs::Cint)
    ccall((:IDASpilsSetMaxRestarts,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::Ptr{Void},maxl::Cint)
    ccall((:IDASpilsSetMaxl,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::Ptr{Void},eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,shlib),Cint,(Ptr{Void},realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::Ptr{Void},dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,shlib),Cint,(Ptr{Void},realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::Ptr{Void},nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Clong)
    ccall((:IDASpilsGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDADlsSetDenseJacFn(ida_mem::Ptr{Void},jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,shlib),Cint,(Ptr{Void},IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::Ptr{Void},jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,shlib),Cint,(Ptr{Void},IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::Ptr{Void},njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Clong)
    ccall((:IDADlsGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function IDABand(ida_mem::Ptr{Void},Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDABBDPrecInit(ida_mem::Ptr{Void},Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,shlib),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem::Ptr{Void},mudq::Clong,mldq::Clong,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,shlib),Cint,(Ptr{Void},Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem::Ptr{Void},lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADense(ida_mem::Ptr{Void},Neq::Clong)
    ccall((:IDADense,shlib),Cint,(Ptr{Void},Clong),ida_mem,Neq)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,shlib),Ptr{Void},())
end

function IDASetErrHandlerFn(ida_mem::Ptr{Void},ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,shlib),Cint,(Ptr{Void},IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::Ptr{Void},errfp::Ptr{Void})
    ccall((:IDASetErrFile,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:IDASetUserData,shlib),Cint,(Ptr{Void},Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::Ptr{Void},maxord::Cint)
    ccall((:IDASetMaxOrd,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::Ptr{Void},mxsteps::Clong)
    ccall((:IDASetMaxNumSteps,shlib),Cint,(Ptr{Void},Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::Ptr{Void},hin::realtype)
    ccall((:IDASetInitStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::Ptr{Void},hmax::realtype)
    ccall((:IDASetMaxStep,shlib),Cint,(Ptr{Void},realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::Ptr{Void},tstop::realtype)
    ccall((:IDASetStopTime,shlib),Cint,(Ptr{Void},realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::Ptr{Void},epcon::realtype)
    ccall((:IDASetNonlinConvCoef,shlib),Cint,(Ptr{Void},realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::Ptr{Void},maxnef::Cint)
    ccall((:IDASetMaxErrTestFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::Ptr{Void},maxcor::Cint)
    ccall((:IDASetMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::Ptr{Void},maxncf::Cint)
    ccall((:IDASetMaxConvFails,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::Ptr{Void},suppressalg::Cint)
    ccall((:IDASetSuppressAlg,shlib),Cint,(Ptr{Void},Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::Ptr{Void},id::N_Vector)
    ccall((:IDASetId,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::Ptr{Void},constraints::N_Vector)
    ccall((:IDASetConstraints,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::Ptr{Void})
    ccall((:IDASetNoInactiveRootWarn,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAInit(ida_mem::Ptr{Void},res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,shlib),Cint,(Ptr{Void},IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::Ptr{Void},t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::Ptr{Void},efun::IDAEwtFn)
    ccall((:IDAWFtolerances,shlib),Cint,(Ptr{Void},IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::Ptr{Void},epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::Ptr{Void},maxnh::Cint)
    ccall((:IDASetMaxNumStepsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::Ptr{Void},maxnj::Cint)
    ccall((:IDASetMaxNumJacsIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::Ptr{Void},maxnit::Cint)
    ccall((:IDASetMaxNumItersIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::Ptr{Void},lsoff::Cint)
    ccall((:IDASetLineSearchOffIC,shlib),Cint,(Ptr{Void},Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::Ptr{Void},steptol::realtype)
    ccall((:IDASetStepToleranceIC,shlib),Cint,(Ptr{Void},realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::Ptr{Void},nrtfn::Cint,g::IDARootFn)
    ccall((:IDARootInit,shlib),Cint,(Ptr{Void},Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem::Ptr{Void},icopt::Cint,tout1::realtype)
    ccall((:IDACalcIC,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::Ptr{Void},tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint)
    ccall((:IDASolve,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::Ptr{Void},nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::Ptr{Void},nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::Ptr{Void},yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,shlib),Cint,(Ptr{Void},N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::Ptr{Void},klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::Ptr{Void},kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:IDAGetActualInitStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:IDAGetLastStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:IDAGetCurrentStep,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:IDAGetCurrentTime,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::Ptr{Void},tolsfact::Ptr{realtype})
    ccall((:IDAGetTolScaleFactor,shlib),Cint,(Ptr{Void},Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::Ptr{Void},eweight::N_Vector)
    ccall((:IDAGetErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::Ptr{Void},ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::Ptr{Void},nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:IDAGetIntegratorStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ptr{Ptr{Void}})
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:IDAEwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:IDAErrHandler,shlib),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpbcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,shlib),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,shlib),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,shlib),Void,(SpbcgMem,),mem)
end

function IDASpbcg(ida_mem::Ptr{Void},maxl::Cint)
    ccall((:IDASpbcg,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spgmr.h
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

function IDASpgmr(ida_mem::Ptr{Void},maxl::Cint)
    ccall((:IDASpgmr,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_sptfqmr.h
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

function IDASptfqmr(ida_mem::Ptr{Void},maxl::Cint)
    ccall((:IDASptfqmr,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end
