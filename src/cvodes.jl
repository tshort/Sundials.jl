# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvodes),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeInit(cvode_mem::Ptr{Void},f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvodes),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::Ptr{Void},t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::Ptr{Void},efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvodes),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem::Ptr{Void},fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,cvodes),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem::Ptr{Void},yQ0::N_Vector)
    ccall((:CVodeQuadReInit,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem::Ptr{Void},reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem::Ptr{Void},reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem::Ptr{Void},Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem::Ptr{Void},Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem::Ptr{Void},ism::Cint,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,cvodes),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:CVodeSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem::Ptr{Void})
    ccall((:CVodeSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem::Ptr{Void},fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,cvodes),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem::Ptr{Void},yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:CVodeQuadSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem::Ptr{Void},nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvodes),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem::Ptr{Ptr{Void}})
    ccall((:CVodeFree,cvodes),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem::Ptr{Void})
    ccall((:CVodeSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem::Ptr{Void},ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,cvodes),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,cvodes),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:CVodeSetUserData,cvodes),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::Ptr{Void},maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::Ptr{Void},mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvodes),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::Ptr{Void},mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::Ptr{Void},stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::Ptr{Void},hin::realtype)
    ccall((:CVodeSetInitStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::Ptr{Void},hmin::realtype)
    ccall((:CVodeSetMinStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::Ptr{Void},hmax::realtype)
    ccall((:CVodeSetMaxStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::Ptr{Void},tstop::realtype)
    ccall((:CVodeSetStopTime,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::Ptr{Void},maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::Ptr{Void},maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::Ptr{Void},maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::Ptr{Void},nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::Ptr{Void},iter::Cint)
    ccall((:CVodeSetIterType,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::Ptr{Void})
    ccall((:CVodeSetNoInactiveRootWarn,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetQuadErrCon(cvode_mem::Ptr{Void},errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem::Ptr{Void},DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem::Ptr{Void},errconS::Cint)
    ccall((:CVodeSetSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem::Ptr{Void},maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem::Ptr{Void},p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem::Ptr{Void},errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem::Ptr{Void})
    ccall((:CVodeSensToggleOff,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem::Ptr{Void},tret::Ptr{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,cvodes),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem::Ptr{Void},tret::Ptr{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem::Ptr{Void},tret::Ptr{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetWorkSpace(cvode_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::Ptr{Void},qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::Ptr{Void},qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::Ptr{Void},nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::Ptr{Void},tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::Ptr{Void},eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::Ptr{Void},ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::Ptr{Void},nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVodeGetQuadNumRhsEvals(cvode_mem::Ptr{Void},nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem::Ptr{Void},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem::Ptr{Void},eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem::Ptr{Void},nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem::Ptr{Void},nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem::Ptr{Void},nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem::Ptr{Void},nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem::Ptr{Void},eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem::Ptr{Void},nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem::Ptr{Void},nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::Ptr{Void},nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem::Ptr{Void},nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem::Ptr{Void},nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem::Ptr{Void},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem::Ptr{Void},eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem::Ptr{Void},nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem::Ptr{Void},steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,cvodes),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem::Ptr{Void})
    ccall((:CVodeAdjReInit,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem::Ptr{Void})
    ccall((:CVodeAdjFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem::Ptr{Void},lmmB::Cint,iterB::Cint,which::Ptr{Cint})
    ccall((:CVodeCreateB,cvodes),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem::Ptr{Void},which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem::Ptr{Void},which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem::Ptr{Void},which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem::Ptr{Void},which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem::Ptr{Void},which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem::Ptr{Void},which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,cvodes),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem::Ptr{Void},tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,cvodes),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem::Ptr{Void})
    ccall((:CVodeSetAdjNoSensi,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem::Ptr{Void},which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem::Ptr{Void},which::Cint,user_dataB::Ptr{Void})
    ccall((:CVodeSetUserDataB,cvodes),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem::Ptr{Void},which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem::Ptr{Void},which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,cvodes),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem::Ptr{Void},which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem::Ptr{Void},which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem::Ptr{Void},which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem::Ptr{Void},which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem::Ptr{Void},which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem::Ptr{Void},which::Cint,tBret::Ptr{realtype},yB::N_Vector)
    ccall((:CVodeGetB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem::Ptr{Void},which::Cint,tBret::Ptr{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem::Ptr{Void},which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,cvodes),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem::Ptr{Void},t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem::Ptr{Void},ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,cvodes),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem::Ptr{Void},which::Cint,t::Ptr{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem::Ptr{Void},which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem::Ptr{Void},addr::Ptr{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,cvodes),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::Ptr{Void},jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::Ptr{Void},jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,cvodes_direct),Cint,(Ptr{Void},CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::Ptr{Void},njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,cvodes_direct),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Clong)
    ccall((:CVDlsGetReturnFlagName,cvodes_direct),Ptr{UInt8},(Clong,),flag)
end

function CVDlsSetDenseJacFnB(cvode_mem::Ptr{Void},which::Cint,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem::Ptr{Void},which::Cint,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,cvodes_direct),Cint,(Ptr{Void},Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpilsSetPrecType(cvode_mem::Ptr{Void},pretype::Cint)
    ccall((:CVSpilsSetPrecType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::Ptr{Void},gstype::Cint)
    ccall((:CVSpilsSetGSType,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::Ptr{Void},maxl::Cint)
    ccall((:CVSpilsSetMaxl,cvodes_spils),Cint,(Ptr{Void},Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::Ptr{Void},eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,cvodes_spils),Cint,(Ptr{Void},realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::Ptr{Void},pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,cvodes_spils),Cint,(Ptr{Void},CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::Ptr{Void},jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,cvodes_spils),Cint,(Ptr{Void},CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::Ptr{Void},npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::Ptr{Void},npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::Ptr{Void},nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::Ptr{Void},nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::Ptr{Void},njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,cvodes_spils),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Clong)
    ccall((:CVSpilsGetReturnFlagName,cvodes_spils),Ptr{UInt8},(Clong,),flag)
end

function CVSpilsSetPrecTypeB(cvode_mem::Ptr{Void},which::Cint,pretypeB::Cint)
    ccall((:CVSpilsSetPrecTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::Ptr{Void},which::Cint,gstypeB::Cint)
    ccall((:CVSpilsSetGSTypeB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::Ptr{Void},which::Cint,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,cvodes_spils),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::Ptr{Void},which::Cint,maxlB::Cint)
    ccall((:CVSpilsSetMaxlB,cvodes_spils),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::Ptr{Void},which::Cint,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::Ptr{Void},which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBand(cvode_mem::Ptr{Void},N::Clong,mupper::Clong,mlower::Clong)
    ccall((:CVBand,cvodes_band),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBandB(cvode_mem::Ptr{Void},which::Cint,nB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:CVBandB,cvodes_band),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBandPrecInit(cvode_mem::Ptr{Void},N::Clong,mu::Clong,ml::Clong)
    ccall((:CVBandPrecInit,cvodes_bandpre),Cint,(Ptr{Void},Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,cvodes_bandpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,cvodes_bandpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsBP)
end

function CVBandPrecInitB(cvode_mem::Ptr{Void},which::Cint,nB::Clong,muB::Clong,mlB::Clong)
    ccall((:CVBandPrecInitB,cvodes_bandpre),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem::Ptr{Void},Nlocal::Clong,mudq::Clong,mldq::Clong,mukeep::Clong,mlkeep::Clong,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,cvodes_bbdpre),Cint,(Ptr{Void},Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::Ptr{Void},mudq::Clong,mldq::Clong,dqrely::realtype)
    ccall((:CVBBDPrecReInit,cvodes_bbdpre),Cint,(Ptr{Void},Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::Ptr{Void},lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,cvodes_bbdpre),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::Ptr{Void},ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,cvodes_bbdpre),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem::Ptr{Void},which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,cvodes_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecReInitB(cvode_mem::Ptr{Void},which::Cint,mudqB::Clong,mldqB::Clong,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,cvodes_bbdpre),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDense(cvode_mem::Ptr{Void},N::Clong)
    ccall((:CVDense,cvodes_dense),Cint,(Ptr{Void},Clong),cvode_mem,N)
end

function CVDenseB(cvode_mem::Ptr{Void},which::Cint,nB::Clong)
    ccall((:CVDenseB,cvodes_dense),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,nB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDiag(cvode_mem::Ptr{Void})
    ccall((:CVDiag,cvodes_diag),Cint,(Ptr{Void},),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem::Ptr{Void},lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem::Ptr{Void},nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem::Ptr{Void},flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,cvodes_diag),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Clong)
    ccall((:CVDiagGetReturnFlagName,cvodes_diag),Ptr{UInt8},(Clong,),flag)
end

function CVDiagB(cvode_mem::Ptr{Void},which::Cint)
    ccall((:CVDiagB,cvodes_diag),Cint,(Ptr{Void},Cint),cvode_mem,which)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Cint,iter::Cint)
    ccall((:CVodeCreate,cvodes),Ptr{Void},(Cint,Cint),lmm,iter)
end

function CVodeInit(cvode_mem::Ptr{Void},f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,cvodes),Cint,(Ptr{Void},CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::Ptr{Void},t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::Ptr{Void},reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::Ptr{Void},efun::CVEwtFn)
    ccall((:CVodeWFtolerances,cvodes),Cint,(Ptr{Void},CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem::Ptr{Void},fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,cvodes),Cint,(Ptr{Void},CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem::Ptr{Void},yQ0::N_Vector)
    ccall((:CVodeQuadReInit,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem::Ptr{Void},reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,cvodes),Cint,(Ptr{Void},realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem::Ptr{Void},reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem::Ptr{Void},Ns::Cint,ism::Cint,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem::Ptr{Void},Ns::Cint,ism::Cint,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,cvodes),Cint,(Ptr{Void},Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem::Ptr{Void},ism::Cint,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,cvodes),Cint,(Ptr{Void},Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:CVodeSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem::Ptr{Void})
    ccall((:CVodeSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem::Ptr{Void},fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,cvodes),Cint,(Ptr{Void},CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem::Ptr{Void},yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:CVodeQuadSensSStolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,cvodes),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadSensEEtolerances,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeRootInit(cvode_mem::Ptr{Void},nrtfn::Cint,g::CVRootFn)
    ccall((:CVodeRootInit,cvodes),Cint,(Ptr{Void},Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem::Ptr{Ptr{Void}})
    ccall((:CVodeFree,cvodes),Void,(Ptr{Ptr{Void}},),cvode_mem)
end

function CVodeQuadFree(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSensFree(cvode_mem::Ptr{Void})
    ccall((:CVodeSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem::Ptr{Void})
    ccall((:CVodeQuadSensFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem::Ptr{Void},ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,cvodes),Cint,(Ptr{Void},CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::Ptr{Void},errfp::Ptr{FILE})
    ccall((:CVodeSetErrFile,cvodes),Cint,(Ptr{Void},Ptr{FILE}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::Ptr{Void},user_data::Ptr{Void})
    ccall((:CVodeSetUserData,cvodes),Cint,(Ptr{Void},Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::Ptr{Void},maxord::Cint)
    ccall((:CVodeSetMaxOrd,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::Ptr{Void},mxsteps::Clong)
    ccall((:CVodeSetMaxNumSteps,cvodes),Cint,(Ptr{Void},Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::Ptr{Void},mxhnil::Cint)
    ccall((:CVodeSetMaxHnilWarns,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::Ptr{Void},stldet::Cint)
    ccall((:CVodeSetStabLimDet,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::Ptr{Void},hin::realtype)
    ccall((:CVodeSetInitStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::Ptr{Void},hmin::realtype)
    ccall((:CVodeSetMinStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::Ptr{Void},hmax::realtype)
    ccall((:CVodeSetMaxStep,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::Ptr{Void},tstop::realtype)
    ccall((:CVodeSetStopTime,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::Ptr{Void},maxnef::Cint)
    ccall((:CVodeSetMaxErrTestFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::Ptr{Void},maxcor::Cint)
    ccall((:CVodeSetMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::Ptr{Void},maxncf::Cint)
    ccall((:CVodeSetMaxConvFails,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::Ptr{Void},nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,cvodes),Cint,(Ptr{Void},realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::Ptr{Void},iter::Cint)
    ccall((:CVodeSetIterType,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::Ptr{Void},rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::Ptr{Void})
    ccall((:CVodeSetNoInactiveRootWarn,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetQuadErrCon(cvode_mem::Ptr{Void},errconQ::Cint)
    ccall((:CVodeSetQuadErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem::Ptr{Void},DQtype::Cint,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem::Ptr{Void},errconS::Cint)
    ccall((:CVodeSetSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem::Ptr{Void},maxcorS::Cint)
    ccall((:CVodeSetSensMaxNonlinIters,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem::Ptr{Void},p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem::Ptr{Void},errconQS::Cint)
    ccall((:CVodeSetQuadSensErrCon,cvodes),Cint,(Ptr{Void},Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem::Ptr{Void})
    ccall((:CVodeSensToggleOff,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVode(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint)
    ccall((:CVode,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem::Ptr{Void},tret::Ptr{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,cvodes),Cint,(Ptr{Void},Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:CVodeGetQuadDky,cvodes),Cint,(Ptr{Void},realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem::Ptr{Void},tret::Ptr{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,ySout::N_Vector)
    ccall((:CVodeGetSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dky::N_Vector)
    ccall((:CVodeGetSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem::Ptr{Void},tret::Ptr{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,cvodes),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,cvodes),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem::Ptr{Void},t::realtype,k::Cint,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,cvodes),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,cvodes),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
end

function CVodeGetWorkSpace(cvode_mem::Ptr{Void},lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::Ptr{Void},nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::Ptr{Void},nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::Ptr{Void},netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::Ptr{Void},qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::Ptr{Void},qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::Ptr{Void},nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::Ptr{Void},hinused::Ptr{realtype})
    ccall((:CVodeGetActualInitStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::Ptr{Void},hlast::Ptr{realtype})
    ccall((:CVodeGetLastStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::Ptr{Void},hcur::Ptr{realtype})
    ccall((:CVodeGetCurrentStep,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::Ptr{Void},tcur::Ptr{realtype})
    ccall((:CVodeGetCurrentTime,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::Ptr{Void},tolsfac::Ptr{realtype})
    ccall((:CVodeGetTolScaleFactor,cvodes),Cint,(Ptr{Void},Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::Ptr{Void},eweight::N_Vector)
    ccall((:CVodeGetErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::Ptr{Void},ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::Ptr{Void},ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::Ptr{Void},rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,cvodes),Cint,(Ptr{Void},Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::Ptr{Void},nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Ptr{realtype},hlast::Ptr{realtype},hcur::Ptr{realtype},tcur::Ptr{realtype})
    ccall((:CVodeGetIntegratorStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::Ptr{Void},nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::Ptr{Void},nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Clong)
    ccall((:CVodeGetReturnFlagName,cvodes),Ptr{UInt8},(Clong,),flag)
end

function CVodeGetQuadNumRhsEvals(cvode_mem::Ptr{Void},nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem::Ptr{Void},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem::Ptr{Void},eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,cvodes),Cint,(Ptr{Void},N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem::Ptr{Void},nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem::Ptr{Void},nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem::Ptr{Void},nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem::Ptr{Void},nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem::Ptr{Void},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem::Ptr{Void},eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem::Ptr{Void},nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem::Ptr{Void},nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::Ptr{Void},nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::Ptr{Void},nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem::Ptr{Void},nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem::Ptr{Void},nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem::Ptr{Void},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,cvodes),Cint,(Ptr{Void},Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem::Ptr{Void},eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,cvodes),Cint,(Ptr{Void},Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem::Ptr{Void},nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,cvodes),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem::Ptr{Void},steps::Clong,interp::Cint)
    ccall((:CVodeAdjInit,cvodes),Cint,(Ptr{Void},Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem::Ptr{Void})
    ccall((:CVodeAdjReInit,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeAdjFree(cvode_mem::Ptr{Void})
    ccall((:CVodeAdjFree,cvodes),Void,(Ptr{Void},),cvode_mem)
end

function CVodeCreateB(cvode_mem::Ptr{Void},lmmB::Cint,iterB::Cint,which::Ptr{Cint})
    ccall((:CVodeCreateB,cvodes),Cint,(Ptr{Void},Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem::Ptr{Void},which::Cint,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem::Ptr{Void},which::Cint,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,cvodes),Cint,(Ptr{Void},Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem::Ptr{Void},which::Cint,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem::Ptr{Void},which::Cint,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem::Ptr{Void},which::Cint,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,cvodes),Cint,(Ptr{Void},Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem::Ptr{Void},which::Cint,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,cvodes),Cint,(Ptr{Void},Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,cvodes),Cint,(Ptr{Void},Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem::Ptr{Void},tout::realtype,yout::N_Vector,tret::Ptr{realtype},itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,cvodes),Cint,(Ptr{Void},realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem::Ptr{Void},tBout::realtype,itaskB::Cint)
    ccall((:CVodeB,cvodes),Cint,(Ptr{Void},realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem::Ptr{Void})
    ccall((:CVodeSetAdjNoSensi,cvodes),Cint,(Ptr{Void},),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem::Ptr{Void},which::Cint,iterB::Cint)
    ccall((:CVodeSetIterTypeB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem::Ptr{Void},which::Cint,user_dataB::Ptr{Void})
    ccall((:CVodeSetUserDataB,cvodes),Cint,(Ptr{Void},Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem::Ptr{Void},which::Cint,maxordB::Cint)
    ccall((:CVodeSetMaxOrdB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem::Ptr{Void},which::Cint,mxstepsB::Clong)
    ccall((:CVodeSetMaxNumStepsB,cvodes),Cint,(Ptr{Void},Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem::Ptr{Void},which::Cint,stldetB::Cint)
    ccall((:CVodeSetStabLimDetB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem::Ptr{Void},which::Cint,hinB::realtype)
    ccall((:CVodeSetInitStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem::Ptr{Void},which::Cint,hminB::realtype)
    ccall((:CVodeSetMinStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem::Ptr{Void},which::Cint,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,cvodes),Cint,(Ptr{Void},Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem::Ptr{Void},which::Cint,errconQB::Cint)
    ccall((:CVodeSetQuadErrConB,cvodes),Cint,(Ptr{Void},Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem::Ptr{Void},which::Cint,tBret::Ptr{realtype},yB::N_Vector)
    ccall((:CVodeGetB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem::Ptr{Void},which::Cint,tBret::Ptr{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem::Ptr{Void},which::Cint)
    ccall((:CVodeGetAdjCVodeBmem,cvodes),Ptr{Void},(Ptr{Void},Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem::Ptr{Void},t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,cvodes),Cint,(Ptr{Void},realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem::Ptr{Void},ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,cvodes),Cint,(Ptr{Void},Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem::Ptr{Void},which::Cint,t::Ptr{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem::Ptr{Void},which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,cvodes),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem::Ptr{Void},addr::Ptr{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,cvodes),Cint,(Ptr{Void},Ptr{Ptr{Void}}),cvode_mem,addr)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:cvEwtSet,cvodes_impl),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:cvErrHandler,cvodes_impl),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end

function cvSensRhsWrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,yScur::Ptr{N_Vector},fScur::Ptr{N_Vector},temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhsWrapper,cvodes_impl),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},N_Vector,N_Vector),cv_mem,time,ycur,fcur,yScur,fScur,temp1,temp2)
end

function cvSensRhs1Wrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,is::Cint,yScur::N_Vector,fScur::N_Vector,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhs1Wrapper,cvodes_impl),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,N_Vector,N_Vector),cv_mem,time,ycur,fcur,is,yScur,fScur,temp1,temp2)
end

function cvSensRhsInternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,yS::Ptr{N_Vector},ySdot::Ptr{N_Vector},fS_data::Ptr{Void},tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhsInternalDQ,cvodes_impl),Cint,(Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,yS,ySdot,fS_data,tempv,ftemp)
end

function cvSensRhs1InternalDQ(Ns::Cint,t::realtype,y::N_Vector,ydot::N_Vector,is::Cint,yS::N_Vector,ySdot::N_Vector,fS_data::Ptr{Void},tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhs1InternalDQ,cvodes_impl),Cint,(Cint,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,is,yS,ySdot,fS_data,tempv,ftemp)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpbcg(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSpbcg,cvodes_spbcgs),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcgB(cvode_mem::Ptr{Void},which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpbcgB,cvodes_spbcgs),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpgmr(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSpgmr,cvodes_spgmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmrB(cvode_mem::Ptr{Void},which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSpgmrB,cvodes_spgmr),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpilsSetJacTimesVecFnB(cvode_mem::Ptr{Void},which::Cint,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,cvodes_spils),Cint,(Ptr{Void},Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSptfqmr(cvode_mem::Ptr{Void},pretype::Cint,maxl::Cint)
    ccall((:CVSptfqmr,cvodes_sptfqmr),Cint,(Ptr{Void},Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmrB(cvode_mem::Ptr{Void},which::Cint,pretypeB::Cint,maxlB::Cint)
    ccall((:CVSptfqmrB,cvodes_sptfqmr),Cint,(Ptr{Void},Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
