# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvode),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem::Ptr{Void},ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,cvode),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,cvode),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:CVodeSetUserData,cvode),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::Ptr{Void},maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::Ptr{Void},mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvode),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::Ptr{Void},mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvode),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::Ptr{Void},stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvode),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::Ptr{Void},hin::realtype)
    ccall((:CVodeSetInitStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::Ptr{Void},hmin::realtype)
    ccall((:CVodeSetMinStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::Ptr{Void},hmax::realtype)
    ccall((:CVodeSetMaxStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::Ptr{Void},tstop::realtype)
    ccall((:CVodeSetStopTime,cvode),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::Ptr{Void},maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::Ptr{Void},maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::Ptr{Void},maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::Ptr{Void},nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvode),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::Ptr{Void},iter::Cint)
    ccall((:CVodeSetIterType,cvode),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::Ptr{Void})
    ccall((:CVodeSetNoInactiveRootWarn,cvode),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem::Ptr{Void},f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvode),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::Ptr{Void},t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvode),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::Ptr{Void},efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvode),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem::Ptr{Void},nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvode),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,cvode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvode),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::Ptr{Void},qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::Ptr{Void},qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::Ptr{Void},nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::Ptr{Void},tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::Ptr{Void},eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::Ptr{Void},ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::Ptr{Void},nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeFree(cvode_mem::Ptr{Ptr{Void}})
    ccall((:CVodeFree,cvode),Void,(Ptr{Ptr{Void}},),cvode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::Ptr{Void},jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::Ptr{Void},jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvode_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,cvode_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::Ptr{Void},njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,cvode_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvode_direct),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpilsSetPrecType(cvode_mem::Ptr{Void},pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::Ptr{Void},gstype::Cint)
    ccall((:CVSpilsSetGSType,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::Ptr{Void},maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvode_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::Ptr{Void},eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvode_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::Ptr{Void},pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvode_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::Ptr{Void},jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvode_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,cvode_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,cvode_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvode_spils),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBand(cvode_mem::Ptr{Void},N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,cvode_band),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBandPrecInit(cvode_mem::Ptr{Void},N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,cvode_bandpre),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,cvode_bandpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,cvode_bandpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0



function CVBBDPrecInit(cvode_mem::Ptr{Void},Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,cvode_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::Ptr{Void},mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,cvode_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,cvode_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,cvode_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDense(cvode_mem::Ptr{Void},N::Clong)
    ccall((:CVDense,cvode_dense),Cint,(Ptr{Void},Clong),cvode_mem,N)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDiag(cvode_mem::Ptr{Void})
    ccall((:CVDiag,cvode_diag),Cint,(Ptr{Void},),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,cvode_diag),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,cvode_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,cvode_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,cvode_diag),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvode),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem::Ptr{Void},ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,cvode),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,cvode),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:CVodeSetUserData,cvode),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::Ptr{Void},maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::Ptr{Void},mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvode),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::Ptr{Void},mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvode),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::Ptr{Void},stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvode),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::Ptr{Void},hin::realtype)
    ccall((:CVodeSetInitStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::Ptr{Void},hmin::realtype)
    ccall((:CVodeSetMinStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::Ptr{Void},hmax::realtype)
    ccall((:CVodeSetMaxStep,cvode),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::Ptr{Void},tstop::realtype)
    ccall((:CVodeSetStopTime,cvode),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::Ptr{Void},maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::Ptr{Void},maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::Ptr{Void},maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvode),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::Ptr{Void},nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvode),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::Ptr{Void},iter::Cint)
    ccall((:CVodeSetIterType,cvode),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::Ptr{Void})
    ccall((:CVodeSetNoInactiveRootWarn,cvode),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeInit(cvode_mem::Ptr{Void},f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvode),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::Ptr{Void},t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvode),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvode),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::Ptr{Void},efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvode),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem::Ptr{Void},nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvode),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,cvode),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvode),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::Ptr{Void},qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::Ptr{Void},qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::Ptr{Void},nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::Ptr{Void},tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,cvode),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::Ptr{Void},eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::Ptr{Void},ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvode),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,cvode),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::Ptr{Void},nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,cvode),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,cvode),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeFree(cvode_mem::Ptr{Ptr{Void}})
    ccall((:CVodeFree,cvode),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:CVEwtSet,cvode_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function CVErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:CVErrHandler,cvode_impl),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpbcgMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,sundials_spbcgs),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,sundials_spbcgs),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,sundials_spbcgs),Void,(SpbcgMem,),mem)
end

function CVSpbcg(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,cvode_spbcgs),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpgmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,sundials_spgmr),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,gstype::Cint,delta::realtype,max_restarts::Cint,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpgmrSolve,sundials_spgmr),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,sundials_spgmr),Void,(SpgmrMem,),mem)
end

function CVSpgmr(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,cvode_spgmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SptfqmrMalloc(l_max::Cint,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,sundials_sptfqmr),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Cint,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Ptr{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SptfqmrSolve,sundials_sptfqmr),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,sundials_sptfqmr),Void,(SptfqmrMem,),mem)
end

function CVSptfqmr(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,cvode_sptfqmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end
