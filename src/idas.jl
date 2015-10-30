# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas.h
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

function IDASetQuadErrCon(ida_mem::Ptr{Void},errconQ::Cint)
    ccall((:IDASetQuadErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem::Ptr{Void},rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,shlib),Cint,(Ptr{Void},IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem::Ptr{Void},yQ0::N_Vector)
    ccall((:IDAQuadReInit,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem::Ptr{Void},DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem::Ptr{Void},p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem::Ptr{Void},errconS::Cint)
    ccall((:IDASetSensErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem::Ptr{Void},maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem::Ptr{Void},Ns::Cint,ism::Cint,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,shlib),Cint,(Ptr{Void},Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem::Ptr{Void},ism::Cint,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,shlib),Cint,(Ptr{Void},Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem::Ptr{Void})
    ccall((:IDASensToggleOff,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASensSStolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:IDASensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDASensEEtolerances,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAQuadSensInit(ida_mem::Ptr{Void},resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,shlib),Cint,(Ptr{Void},IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem::Ptr{Void},yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:IDAQuadSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensEEtolerances,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem::Ptr{Void},errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconQS)
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

function IDAGetQuad(ida_mem::Ptr{Void},t::Ptr{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,shlib),Cint,(Ptr{Void},Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem::Ptr{Void},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem::Ptr{Void},eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem::Ptr{Void},tret::Ptr{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem::Ptr{Void},yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,shlib),Cint,(Ptr{Void},Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem::Ptr{Void},nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem::Ptr{Void},nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem::Ptr{Void},nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem::Ptr{Void},eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,shlib),Cint,(Ptr{Void},N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem::Ptr{Void},nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem::Ptr{Void},nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem::Ptr{Void},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem::Ptr{Void},nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem::Ptr{Void},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem::Ptr{Void},eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem::Ptr{Void},tret::Ptr{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ptr{Ptr{Void}})
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAQuadFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDASensFree(ida_mem::Ptr{Void})
    ccall((:IDASensFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDAQuadSensFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDAAdjInit(ida_mem::Ptr{Void},steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,shlib),Cint,(Ptr{Void},Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem::Ptr{Void})
    ccall((:IDAAdjReInit,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAAdjFree(ida_mem::Ptr{Void})
    ccall((:IDAAdjFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDACreateB(ida_mem::Ptr{Void},which::Ptr{Cint})
    ccall((:IDACreateB,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem::Ptr{Void},which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,shlib),Cint,(Ptr{Void},Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem::Ptr{Void},which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,shlib),Cint,(Ptr{Void},Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem::Ptr{Void},which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem::Ptr{Void},which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem::Ptr{Void},which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem::Ptr{Void},which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,shlib),Cint,(Ptr{Void},Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem::Ptr{Void},which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,shlib),Cint,(Ptr{Void},Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem::Ptr{Void},which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem::Ptr{Void},which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem::Ptr{Void},which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem::Ptr{Void},tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem::Ptr{Void},tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,shlib),Cint,(Ptr{Void},realtype,Cint),ida_mem,tBout,itaskB)
end

function IDASetAdjNoSensi(ida_mem::Ptr{Void})
    ccall((:IDASetAdjNoSensi,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASetUserDataB(ida_mem::Ptr{Void},which::Cint,user_dataB::Ptr{Void})
    ccall((:IDASetUserDataB,shlib),Cint,(Ptr{Void},Cint,Ptr{Void}),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem::Ptr{Void},which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem::Ptr{Void},which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,shlib),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem::Ptr{Void},which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem::Ptr{Void},which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem::Ptr{Void},which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem::Ptr{Void},which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem::Ptr{Void},which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem::Ptr{Void},which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem::Ptr{Void},which::Cint,tret::Ptr{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem::Ptr{Void},which::Cint,tret::Ptr{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem::Ptr{Void},which::Cint)
    ccall((:IDAGetAdjIDABmem,shlib),Ptr{Void},(Ptr{Void},Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem::Ptr{Void},which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,shlib),Cint,(Ptr{Void},Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem::Ptr{Void},t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem::Ptr{Void},ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,shlib),Cint,(Ptr{Void},Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem::Ptr{Void},which::Cint,t::Ptr{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem::Ptr{Void},which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem::Ptr{Void},addr::Ptr{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,shlib),Cint,(Ptr{Void},Ptr{Ptr{Void}}),ida_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_direct.h
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

function IDADlsSetDenseJacFnB(ida_mem::Ptr{Void},which::Cint,jacB::IDADlsDenseJacFnB)
    ccall((:IDADlsSetDenseJacFnB,shlib),Cint,(Ptr{Void},Cint,IDADlsDenseJacFnB),ida_mem,which,jacB)
end

function IDADlsSetBandJacFnB(idaa_mem::Ptr{Void},which::Cint,jacB::IDADlsBandJacFnB)
    ccall((:IDADlsSetBandJacFnB,shlib),Cint,(Ptr{Void},Cint,IDADlsBandJacFnB),idaa_mem,which,jacB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spils.h
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

function IDASpilsSetGSTypeB(ida_mem::Ptr{Void},which::Cint,gstypeB::Cint)
    ccall((:IDASpilsSetGSTypeB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,gstypeB)
end

function IDASpilsSetMaxRestartsB(ida_mem::Ptr{Void},which::Cint,maxrsB::Cint)
    ccall((:IDASpilsSetMaxRestartsB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxrsB)
end

function IDASpilsSetEpsLinB(ida_mem::Ptr{Void},which::Cint,eplifacB::realtype)
    ccall((:IDASpilsSetEpsLinB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,eplifacB)
end

function IDASpilsSetMaxlB(ida_mem::Ptr{Void},which::Cint,maxlB::Cint)
    ccall((:IDASpilsSetMaxlB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end

function IDASpilsSetIncrementFactorB(ida_mem::Ptr{Void},which::Cint,dqincfacB::realtype)
    ccall((:IDASpilsSetIncrementFactorB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,dqincfacB)
end

function IDASpilsSetPreconditionerB(ida_mem::Ptr{Void},which::Cint,psetB::IDASpilsPrecSetupFnB,psolveB::IDASpilsPrecSolveFnB)
    ccall((:IDASpilsSetPreconditionerB,shlib),Cint,(Ptr{Void},Cint,IDASpilsPrecSetupFnB,IDASpilsPrecSolveFnB),ida_mem,which,psetB,psolveB)
end

function IDASpilsSetJacTimesVecFnB(ida_mem::Ptr{Void},which::Cint,jtvB::IDASpilsJacTimesVecFnB)
    ccall((:IDASpilsSetJacTimesVecFnB,shlib),Cint,(Ptr{Void},Cint,IDASpilsJacTimesVecFnB),ida_mem,which,jtvB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDABand(ida_mem::Ptr{Void},Neq::Clong,mupper::Clong,mlower::Clong)
    ccall((:IDABand,shlib),Cint,(Ptr{Void},Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end

function IDABandB(idaadj_mem::Ptr{Void},which::Cint,NeqB::Clong,mupperB::Clong,mlowerB::Clong)
    ccall((:IDABandB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,Clong),idaadj_mem,which,NeqB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_bbdpre.h
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

function IDABBDPrecInitB(ida_mem::Ptr{Void},which::Cint,NlocalB::Clong,mudqB::Clong,mldqB::Clong,mukeepB::Clong,mlkeepB::Clong,dq_rel_yyB::realtype,GresB::IDABBDLocalFnB,GcommB::IDABBDCommFnB)
    ccall((:IDABBDPrecInitB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFnB,IDABBDCommFnB),ida_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dq_rel_yyB,GresB,GcommB)
end

function IDABBDPrecReInitB(ida_mem::Ptr{Void},which::Cint,mudqB::Clong,mldqB::Clong,dq_rel_yyB::realtype)
    ccall((:IDABBDPrecReInitB,shlib),Cint,(Ptr{Void},Cint,Clong,Clong,realtype),ida_mem,which,mudqB,mldqB,dq_rel_yyB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDADense(ida_mem::Ptr{Void},Neq::Clong)
    ccall((:IDADense,shlib),Cint,(Ptr{Void},Clong),ida_mem,Neq)
end

function IDADenseB(ida_mem::Ptr{Void},which::Cint,NeqB::Clong)
    ccall((:IDADenseB,shlib),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,NeqB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_impl.h
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

function IDASetQuadErrCon(ida_mem::Ptr{Void},errconQ::Cint)
    ccall((:IDASetQuadErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconQ)
end

function IDAQuadInit(ida_mem::Ptr{Void},rhsQ::IDAQuadRhsFn,yQ0::N_Vector)
    ccall((:IDAQuadInit,shlib),Cint,(Ptr{Void},IDAQuadRhsFn,N_Vector),ida_mem,rhsQ,yQ0)
end

function IDAQuadReInit(ida_mem::Ptr{Void},yQ0::N_Vector)
    ccall((:IDAQuadReInit,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,yQ0)
end

function IDAQuadSStolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::realtype)
    ccall((:IDAQuadSStolerances,shlib),Cint,(Ptr{Void},realtype,realtype),ida_mem,reltolQ,abstolQ)
end

function IDAQuadSVtolerances(ida_mem::Ptr{Void},reltolQ::realtype,abstolQ::N_Vector)
    ccall((:IDAQuadSVtolerances,shlib),Cint,(Ptr{Void},realtype,N_Vector),ida_mem,reltolQ,abstolQ)
end

function IDASetSensDQMethod(ida_mem::Ptr{Void},DQtype::Cint,DQrhomax::realtype)
    ccall((:IDASetSensDQMethod,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,DQtype,DQrhomax)
end

function IDASetSensParams(ida_mem::Ptr{Void},p::Ptr{realtype},pbar::Ptr{realtype},plist::Ptr{Cint})
    ccall((:IDASetSensParams,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{realtype},Ptr{Cint}),ida_mem,p,pbar,plist)
end

function IDASetSensErrCon(ida_mem::Ptr{Void},errconS::Cint)
    ccall((:IDASetSensErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconS)
end

function IDASetSensMaxNonlinIters(ida_mem::Ptr{Void},maxcorS::Cint)
    ccall((:IDASetSensMaxNonlinIters,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxcorS)
end

function IDASensInit(ida_mem::Ptr{Void},Ns::Cint,ism::Cint,resS::IDASensResFn,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensInit,shlib),Cint,(Ptr{Void},Cint,Cint,IDASensResFn,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,Ns,ism,resS,yS0,ypS0)
end

function IDASensReInit(ida_mem::Ptr{Void},ism::Cint,yS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDASensReInit,shlib),Cint,(Ptr{Void},Cint,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,ism,yS0,ypS0)
end

function IDASensToggleOff(ida_mem::Ptr{Void})
    ccall((:IDASensToggleOff,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASensSStolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{realtype})
    ccall((:IDASensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolS,abstolS)
end

function IDASensSVtolerances(ida_mem::Ptr{Void},reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:IDASensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolS,abstolS)
end

function IDASensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDASensEEtolerances,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAQuadSensInit(ida_mem::Ptr{Void},resQS::IDAQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensInit,shlib),Cint,(Ptr{Void},IDAQuadSensRhsFn,Ptr{N_Vector}),ida_mem,resQS,yQS0)
end

function IDAQuadSensReInit(ida_mem::Ptr{Void},yQS0::Ptr{N_Vector})
    ccall((:IDAQuadSensReInit,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,yQS0)
end

function IDAQuadSensSStolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{realtype})
    ccall((:IDAQuadSensSStolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensSVtolerances(ida_mem::Ptr{Void},reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:IDAQuadSensSVtolerances,shlib),Cint,(Ptr{Void},realtype,Ptr{N_Vector}),ida_mem,reltolQS,abstolQS)
end

function IDAQuadSensEEtolerances(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensEEtolerances,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASetQuadSensErrCon(ida_mem::Ptr{Void},errconQS::Cint)
    ccall((:IDASetQuadSensErrCon,shlib),Cint,(Ptr{Void},Cint),ida_mem,errconQS)
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

function IDAGetQuad(ida_mem::Ptr{Void},t::Ptr{realtype},yQout::N_Vector)
    ccall((:IDAGetQuad,shlib),Cint,(Ptr{Void},Ptr{realtype},N_Vector),ida_mem,t,yQout)
end

function IDAGetQuadDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dky::N_Vector)
    ccall((:IDAGetQuadDky,shlib),Cint,(Ptr{Void},realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetQuadNumRhsEvals(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong})
    ccall((:IDAGetQuadNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQevals)
end

function IDAGetQuadNumErrTestFails(ida_mem::Ptr{Void},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQetfails)
end

function IDAGetQuadErrWeights(ida_mem::Ptr{Void},eQweight::N_Vector)
    ccall((:IDAGetQuadErrWeights,shlib),Cint,(Ptr{Void},N_Vector),ida_mem,eQweight)
end

function IDAGetQuadStats(ida_mem::Ptr{Void},nrhsQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:IDAGetQuadStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQevals,nQetfails)
end

function IDAGetSens(ida_mem::Ptr{Void},tret::Ptr{realtype},yySout::Ptr{N_Vector})
    ccall((:IDAGetSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yySout)
end

function IDAGetSens1(ida_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yySret::N_Vector)
    ccall((:IDAGetSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yySret)
end

function IDAGetSensDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dkyS::Ptr{N_Vector})
    ccall((:IDAGetSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyS)
end

function IDAGetSensDky1(ida_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyS::N_Vector)
    ccall((:IDAGetSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyS)
end

function IDAGetSensConsistentIC(ida_mem::Ptr{Void},yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDAGetSensConsistentIC,shlib),Cint,(Ptr{Void},Ptr{N_Vector},Ptr{N_Vector}),ida_mem,yyS0,ypS0)
end

function IDAGetSensNumResEvals(ida_mem::Ptr{Void},nresSevals::Ptr{Clong})
    ccall((:IDAGetSensNumResEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresSevals)
end

function IDAGetNumResEvalsSens(ida_mem::Ptr{Void},nresevalsS::Ptr{Clong})
    ccall((:IDAGetNumResEvalsSens,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nresevalsS)
end

function IDAGetSensNumErrTestFails(ida_mem::Ptr{Void},nSetfails::Ptr{Clong})
    ccall((:IDAGetSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSetfails)
end

function IDAGetSensNumLinSolvSetups(ida_mem::Ptr{Void},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensNumLinSolvSetups,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nlinsetupsS)
end

function IDAGetSensErrWeights(ida_mem::Ptr{Void},eSweight::N_Vector_S)
    ccall((:IDAGetSensErrWeights,shlib),Cint,(Ptr{Void},N_Vector_S),ida_mem,eSweight)
end

function IDAGetSensStats(ida_mem::Ptr{Void},nresSevals::Ptr{Clong},nresevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:IDAGetSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),ida_mem,nresSevals,nresevalsS,nSetfails,nlinsetupsS)
end

function IDAGetSensNumNonlinSolvIters(ida_mem::Ptr{Void},nSniters::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvIters,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSniters)
end

function IDAGetSensNumNonlinSolvConvFails(ida_mem::Ptr{Void},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNumNonlinSolvConvFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nSncfails)
end

function IDAGetSensNonlinSolvStats(ida_mem::Ptr{Void},nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:IDAGetSensNonlinSolvStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nSniters,nSncfails)
end

function IDAGetQuadSensNumRhsEvals(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong})
    ccall((:IDAGetQuadSensNumRhsEvals,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nrhsQSevals)
end

function IDAGetQuadSensNumErrTestFails(ida_mem::Ptr{Void},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensNumErrTestFails,shlib),Cint,(Ptr{Void},Ptr{Clong}),ida_mem,nQSetfails)
end

function IDAGetQuadSensErrWeights(ida_mem::Ptr{Void},eQSweight::Ptr{N_Vector})
    ccall((:IDAGetQuadSensErrWeights,shlib),Cint,(Ptr{Void},Ptr{N_Vector}),ida_mem,eQSweight)
end

function IDAGetQuadSensStats(ida_mem::Ptr{Void},nrhsQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:IDAGetQuadSensStats,shlib),Cint,(Ptr{Void},Ptr{Clong},Ptr{Clong}),ida_mem,nrhsQSevals,nQSetfails)
end

function IDAGetQuadSens(ida_mem::Ptr{Void},tret::Ptr{realtype},yyQSout::Ptr{N_Vector})
    ccall((:IDAGetQuadSens,shlib),Cint,(Ptr{Void},Ptr{realtype},Ptr{N_Vector}),ida_mem,tret,yyQSout)
end

function IDAGetQuadSens1(ida_mem::Ptr{Void},tret::Ptr{realtype},is::Cint,yyQSret::N_Vector)
    ccall((:IDAGetQuadSens1,shlib),Cint,(Ptr{Void},Ptr{realtype},Cint,N_Vector),ida_mem,tret,is,yyQSret)
end

function IDAGetQuadSensDky(ida_mem::Ptr{Void},t::realtype,k::Cint,dkyQS::Ptr{N_Vector})
    ccall((:IDAGetQuadSensDky,shlib),Cint,(Ptr{Void},realtype,Cint,Ptr{N_Vector}),ida_mem,t,k,dkyQS)
end

function IDAGetQuadSensDky1(ida_mem::Ptr{Void},t::realtype,k::Cint,is::Cint,dkyQS::N_Vector)
    ccall((:IDAGetQuadSensDky1,shlib),Cint,(Ptr{Void},realtype,Cint,Cint,N_Vector),ida_mem,t,k,is,dkyQS)
end

function IDAGetReturnFlagName(flag::Clong)
    ccall((:IDAGetReturnFlagName,shlib),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Ptr{Ptr{Void}})
    ccall((:IDAFree,shlib),Void,(Ptr{Ptr{Void}},),ida_mem)
end

function IDAQuadFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDASensFree(ida_mem::Ptr{Void})
    ccall((:IDASensFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDAQuadSensFree(ida_mem::Ptr{Void})
    ccall((:IDAQuadSensFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDAAdjInit(ida_mem::Ptr{Void},steps::Clong,interp::Cint)
    ccall((:IDAAdjInit,shlib),Cint,(Ptr{Void},Clong,Cint),ida_mem,steps,interp)
end

function IDAAdjReInit(ida_mem::Ptr{Void})
    ccall((:IDAAdjReInit,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDAAdjFree(ida_mem::Ptr{Void})
    ccall((:IDAAdjFree,shlib),Void,(Ptr{Void},),ida_mem)
end

function IDACreateB(ida_mem::Ptr{Void},which::Ptr{Cint})
    ccall((:IDACreateB,shlib),Cint,(Ptr{Void},Ptr{Cint}),ida_mem,which)
end

function IDAInitB(ida_mem::Ptr{Void},which::Cint,resB::IDAResFnB,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitB,shlib),Cint,(Ptr{Void},Cint,IDAResFnB,realtype,N_Vector,N_Vector),ida_mem,which,resB,tB0,yyB0,ypB0)
end

function IDAInitBS(ida_mem::Ptr{Void},which::Cint,resS::IDAResFnBS,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAInitBS,shlib),Cint,(Ptr{Void},Cint,IDAResFnBS,realtype,N_Vector,N_Vector),ida_mem,which,resS,tB0,yyB0,ypB0)
end

function IDAReInitB(ida_mem::Ptr{Void},which::Cint,tB0::realtype,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAReInitB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tB0,yyB0,ypB0)
end

function IDASStolerancesB(ida_mem::Ptr{Void},which::Cint,relTolB::realtype,absTolB::realtype)
    ccall((:IDASStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,relTolB,absTolB)
end

function IDASVtolerancesB(ida_mem::Ptr{Void},which::Cint,relTolB::realtype,absTolB::N_Vector)
    ccall((:IDASVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,relTolB,absTolB)
end

function IDAQuadInitB(ida_mem::Ptr{Void},which::Cint,rhsQB::IDAQuadRhsFnB,yQB0::N_Vector)
    ccall((:IDAQuadInitB,shlib),Cint,(Ptr{Void},Cint,IDAQuadRhsFnB,N_Vector),ida_mem,which,rhsQB,yQB0)
end

function IDAQuadInitBS(ida_mem::Ptr{Void},which::Cint,rhsQS::IDAQuadRhsFnBS,yQB0::N_Vector)
    ccall((:IDAQuadInitBS,shlib),Cint,(Ptr{Void},Cint,IDAQuadRhsFnBS,N_Vector),ida_mem,which,rhsQS,yQB0)
end

function IDAQuadReInitB(ida_mem::Ptr{Void},which::Cint,yQB0::N_Vector)
    ccall((:IDAQuadReInitB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,yQB0)
end

function IDAQuadSStolerancesB(ida_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::realtype)
    ccall((:IDAQuadSStolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,realtype),ida_mem,which,reltolQB,abstolQB)
end

function IDAQuadSVtolerancesB(ida_mem::Ptr{Void},which::Cint,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:IDAQuadSVtolerancesB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector),ida_mem,which,reltolQB,abstolQB)
end

function IDACalcICB(ida_mem::Ptr{Void},which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDACalcICB,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector),ida_mem,which,tout1,yy0,yp0)
end

function IDACalcICBS(ida_mem::Ptr{Void},which::Cint,tout1::realtype,yy0::N_Vector,yp0::N_Vector,yyS0::Ptr{N_Vector},ypS0::Ptr{N_Vector})
    ccall((:IDACalcICBS,shlib),Cint,(Ptr{Void},Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector}),ida_mem,which,tout1,yy0,yp0,yyS0,ypS0)
end

function IDASolveF(ida_mem::Ptr{Void},tout::realtype,tret::Ptr{realtype},yret::N_Vector,ypret::N_Vector,itask::Cint,ncheckPtr::Ptr{Cint})
    ccall((:IDASolveF,shlib),Cint,(Ptr{Void},realtype,Ptr{realtype},N_Vector,N_Vector,Cint,Ptr{Cint}),ida_mem,tout,tret,yret,ypret,itask,ncheckPtr)
end

function IDASolveB(ida_mem::Ptr{Void},tBout::realtype,itaskB::Cint)
    ccall((:IDASolveB,shlib),Cint,(Ptr{Void},realtype,Cint),ida_mem,tBout,itaskB)
end

function IDASetAdjNoSensi(ida_mem::Ptr{Void})
    ccall((:IDASetAdjNoSensi,shlib),Cint,(Ptr{Void},),ida_mem)
end

function IDASetUserDataB(ida_mem::Ptr{Void},which::Cint,user_dataB::Ptr{Void})
    ccall((:IDASetUserDataB,shlib),Cint,(Ptr{Void},Cint,Ptr{Void}),ida_mem,which,user_dataB)
end

function IDASetMaxOrdB(ida_mem::Ptr{Void},which::Cint,maxordB::Cint)
    ccall((:IDASetMaxOrdB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxordB)
end

function IDASetMaxNumStepsB(ida_mem::Ptr{Void},which::Cint,mxstepsB::Clong)
    ccall((:IDASetMaxNumStepsB,shlib),Cint,(Ptr{Void},Cint,Clong),ida_mem,which,mxstepsB)
end

function IDASetInitStepB(ida_mem::Ptr{Void},which::Cint,hinB::realtype)
    ccall((:IDASetInitStepB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hinB)
end

function IDASetMaxStepB(ida_mem::Ptr{Void},which::Cint,hmaxB::realtype)
    ccall((:IDASetMaxStepB,shlib),Cint,(Ptr{Void},Cint,realtype),ida_mem,which,hmaxB)
end

function IDASetSuppressAlgB(ida_mem::Ptr{Void},which::Cint,suppressalgB::Cint)
    ccall((:IDASetSuppressAlgB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,suppressalgB)
end

function IDASetIdB(ida_mem::Ptr{Void},which::Cint,idB::N_Vector)
    ccall((:IDASetIdB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,idB)
end

function IDASetConstraintsB(ida_mem::Ptr{Void},which::Cint,constraintsB::N_Vector)
    ccall((:IDASetConstraintsB,shlib),Cint,(Ptr{Void},Cint,N_Vector),ida_mem,which,constraintsB)
end

function IDASetQuadErrConB(ida_mem::Ptr{Void},which::Cint,errconQB::Cint)
    ccall((:IDASetQuadErrConB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,errconQB)
end

function IDAGetB(ida_mem::Ptr{Void},which::Cint,tret::Ptr{realtype},yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,tret,yy,yp)
end

function IDAGetQuadB(ida_mem::Ptr{Void},which::Cint,tret::Ptr{realtype},qB::N_Vector)
    ccall((:IDAGetQuadB,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector),ida_mem,which,tret,qB)
end

function IDAGetAdjIDABmem(ida_mem::Ptr{Void},which::Cint)
    ccall((:IDAGetAdjIDABmem,shlib),Ptr{Void},(Ptr{Void},Cint),ida_mem,which)
end

function IDAGetConsistentICB(ida_mem::Ptr{Void},which::Cint,yyB0::N_Vector,ypB0::N_Vector)
    ccall((:IDAGetConsistentICB,shlib),Cint,(Ptr{Void},Cint,N_Vector,N_Vector),ida_mem,which,yyB0,ypB0)
end

function IDAGetAdjY(ida_mem::Ptr{Void},t::realtype,yy::N_Vector,yp::N_Vector)
    ccall((:IDAGetAdjY,shlib),Cint,(Ptr{Void},realtype,N_Vector,N_Vector),ida_mem,t,yy,yp)
end

function IDAGetAdjCheckPointsInfo(ida_mem::Ptr{Void},ckpnt::Ptr{IDAadjCheckPointRec})
    ccall((:IDAGetAdjCheckPointsInfo,shlib),Cint,(Ptr{Void},Ptr{IDAadjCheckPointRec}),ida_mem,ckpnt)
end

function IDAGetAdjDataPointHermite(ida_mem::Ptr{Void},which::Cint,t::Ptr{realtype},yy::N_Vector,yd::N_Vector)
    ccall((:IDAGetAdjDataPointHermite,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},N_Vector,N_Vector),ida_mem,which,t,yy,yd)
end

function IDAGetAdjDataPointPolynomial(ida_mem::Ptr{Void},which::Cint,t::Ptr{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:IDAGetAdjDataPointPolynomial,shlib),Cint,(Ptr{Void},Cint,Ptr{realtype},Ptr{Cint},N_Vector),ida_mem,which,t,order,y)
end

function IDAGetAdjCurrentCheckPoint(ida_mem::Ptr{Void},addr::Ptr{Ptr{Void}})
    ccall((:IDAGetAdjCurrentCheckPoint,shlib),Cint,(Ptr{Void},Ptr{Ptr{Void}}),ida_mem,addr)
end

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:IDAEwtSet,shlib),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Cint,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:IDAErrHandler,shlib),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end

function IDASensResDQ(Ns::Cint,t::realtype,yy::N_Vector,yp::N_Vector,resval::N_Vector,yyS::Ptr{N_Vector},ypS::Ptr{N_Vector},resvalS::Ptr{N_Vector},user_dataS::Ptr{Void},ytemp::N_Vector,yptemp::N_Vector,restemp::N_Vector)
    ccall((:IDASensResDQ,shlib),Cint,(Cint,realtype,N_Vector,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector,N_Vector),Ns,t,yy,yp,resval,yyS,ypS,resvalS,user_dataS,ytemp,yptemp,restemp)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spbcgs.h
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

function IDASpbcgB(ida_mem::Ptr{Void},which::Cint,maxlB::Cint)
    ccall((:IDASpbcgB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDASpgmr(ida_mem::Ptr{Void},maxl::Cint)
    ccall((:IDASpgmr,shlib),Cint,(Ptr{Void},Cint),ida_mem,maxl)
end

function IDASpgmrB(ida_mem::Ptr{Void},which::Cint,maxlB::Cint)
    ccall((:IDASpgmrB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/idas/idas_sptfqmr.h
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

function IDASptfqmrB(ida_mem::Ptr{Void},which::Cint,maxlB::Cint)
    ccall((:IDASptfqmrB,shlib),Cint,(Ptr{Void},Cint,Cint),ida_mem,which,maxlB)
end
