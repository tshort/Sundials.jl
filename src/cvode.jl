
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

type CVODE_struct; end # dummy type to give us a typed pointer
typealias CVODE_ptr Ref{CVODE_struct}


# header: /usr/local/include/cvode/cvode_band.h
@ctypedef CVDlsDenseJacFn Ref{:Void}
@ctypedef CVDlsBandJacFn Ref{:Void}
@c Int32 CVDlsSetDenseJacFn (:CVODE_ptr,:CVDlsDenseJacFn) shlib
@c Int32 CVDlsSetBandJacFn (:CVODE_ptr,:CVDlsBandJacFn) shlib
@c Int32 CVDlsGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVDlsGetNumJacEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVDlsGetNumRhsEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVDlsGetLastFlag (:CVODE_ptr,Ref{:Clong}) shlib
@c Ref{:Uint8} CVDlsGetReturnFlagName (:Clong,) shlib
@c Int32 CVBand (:CVODE_ptr,:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvode/cvode_bandpre.h
@c Int32 CVBandPrecInit (:CVODE_ptr,:Clong,:Clong,:Clong) shlib
@c Int32 CVBandPrecGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVBandPrecGetNumRhsEvals (:CVODE_ptr,Ref{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_bbdpre.h
@ctypedef CVLocalFn Ref{:Void}
@ctypedef CVCommFn Ref{:Void}
@c Int32 CVBBDPrecInit (:CVODE_ptr,:Clong,:Clong,:Clong,:Clong,:Clong,:RealType,:CVLocalFn,:CVCommFn) shlib
@c Int32 CVBBDPrecReInit (:CVODE_ptr,:Clong,:Clong,:RealType) shlib
@c Int32 CVBBDPrecGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVBBDPrecGetNumGfnEvals (:CVODE_ptr,Ref{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_dense.h
@c Int32 CVDense (:CVODE_ptr,:Clong) shlib

# header: /usr/local/include/cvode/cvode_diag.h
@c Int32 CVDiag (:CVODE_ptr,) shlib
@c Int32 CVDiagGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVDiagGetNumRhsEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVDiagGetLastFlag (:CVODE_ptr,Ref{:Clong}) shlib
@c Ref{:Uint8} CVDiagGetReturnFlagName (:Clong,) shlib

# header: /usr/local/include/cvode/cvode_direct.h

# header: /usr/local/include/cvode/cvode.h
@ctypedef ptrdiff_t Void
@ctypedef size_t Void
@ctypedef wchar_t Int32
@ctypedef __u_char Uint8
@ctypedef __u_short Uint16
@ctypedef __u_int Uint32
@ctypedef __u_long Culong
@ctypedef __int8_t Uint8
@ctypedef __uint8_t Uint8
@ctypedef __int16_t Int16
@ctypedef __uint16_t Uint16
@ctypedef __int32_t Int32
@ctypedef __uint32_t Uint32
@ctypedef __int64_t Int64
@ctypedef __uint64_t Uint64
@ctypedef __quad_t Int64
@ctypedef __u_quad_t Uint64
@ctypedef __dev_t Uint64
@ctypedef __uid_t Uint32
@ctypedef __gid_t Uint32
@ctypedef __ino_t Uint64
@ctypedef __ino64_t Uint64
@ctypedef __mode_t Uint32
@ctypedef __nlink_t Uint64
@ctypedef __off_t Int64
@ctypedef __off64_t Int64
@ctypedef __pid_t Int32
@ctypedef __fsid_t Void
@ctypedef __clock_t Int64
@ctypedef __rlim_t Uint64
@ctypedef __rlim64_t Uint64
@ctypedef __id_t Uint32
@ctypedef __time_t Int64
@ctypedef __useconds_t Uint32
@ctypedef __suseconds_t Int64
@ctypedef __daddr_t Int32
@ctypedef __swblk_t Int64
@ctypedef __key_t Int32
@ctypedef __clockid_t Int32
@ctypedef __timer_t Ref{:None}
@ctypedef __blksize_t Int64
@ctypedef __blkcnt_t Int64
@ctypedef __blkcnt64_t Int64
@ctypedef __fsblkcnt_t Uint64
@ctypedef __fsblkcnt64_t Uint64
@ctypedef __fsfilcnt_t Uint64
@ctypedef __fsfilcnt64_t Uint64
@ctypedef __ssize_t Int64
@ctypedef __loff_t __off64_t
@ctypedef __qaddr_t Ref{:__quad_t}
@ctypedef __caddr_t Ref{:Uint8}
@ctypedef __intptr_t Int64
@ctypedef __socklen_t Uint32
@ctypedef FILE Void
@ctypedef __FILE Void
@ctypedef __mbstate_t Void
@ctypedef _G_fpos_t Void
@ctypedef _G_fpos64_t Void
@ctypedef _G_int16_t Int16
@ctypedef _G_int32_t Int32
@ctypedef _G_uint16_t Uint16
@ctypedef _G_uint32_t Uint32
@ctypedef va_list __builtin_va_list
@ctypedef __gnuc_va_list __builtin_va_list
@ctypedef _IO_lock_t None
# enum __codecvt_result
@ctypedef __codecvt_result Uint32
const __codecvt_ok = 0
const __codecvt_partial = 1
const __codecvt_error = 2
const __codecvt_noconv = 3
# end
@ctypedef _IO_FILE Void
@ctypedef __io_read_fn Void
@ctypedef __io_write_fn Void
@ctypedef __io_seek_fn Void
@ctypedef __io_close_fn Void
@c Int32 __underflow (Ref{:_IO_FILE},) shlib
@c Int32 __uflow (Ref{:_IO_FILE},) shlib
@c Int32 __overflow (Ref{:_IO_FILE},:Int32) shlib
@c Int32 _IO_getc (Ref{:_IO_FILE},) shlib
@c Int32 _IO_putc (:Int32,Ref{:_IO_FILE}) shlib
@c Int32 _IO_feof (Ref{:_IO_FILE},) shlib
@c Int32 _IO_ferror (Ref{:_IO_FILE},) shlib
@c Int32 _IO_peekc_locked (Ref{:_IO_FILE},) shlib
@c None _IO_flockfile (Ref{:_IO_FILE},) shlib
@c None _IO_funlockfile (Ref{:_IO_FILE},) shlib
@c Int32 _IO_ftrylockfile (Ref{:_IO_FILE},) shlib
@c Int32 _IO_vfscanf (Ref{:_IO_FILE},Ref{:Uint8},Ref{:__va_list_tag},Ref{:Int32}) shlib
@c Int32 _IO_vfprintf (Ref{:_IO_FILE},Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c __ssize_t _IO_padn (Ref{:_IO_FILE},:Int32,:__ssize_t) shlib
@c size_t _IO_sgetn (Ref{:_IO_FILE},Ref{:None},:size_t) shlib
@c __off64_t _IO_seekoff (Ref{:_IO_FILE},:__off64_t,:Int32,:Int32) shlib
@c __off64_t _IO_seekpos (Ref{:_IO_FILE},:__off64_t,:Int32) shlib
@c None _IO_free_backup_area (Ref{:_IO_FILE},) shlib
@ctypedef off_t __off_t
@ctypedef ssize_t __ssize_t
@ctypedef fpos_t _G_fpos_t
@c Int32 remove (Ref{:Uint8},) shlib
@c Int32 rename (Ref{:Uint8},Ref{:Uint8}) shlib
@c Int32 renameat (:Int32,Ref{:Uint8},:Int32,Ref{:Uint8}) shlib
@c Ref{:FILE} tmpfile () shlib
@c Ref{:Uint8} tmpnam (Ref{:Uint8},) shlib
@c Ref{:Uint8} tmpnam_r (Ref{:Uint8},) shlib
@c Ref{:Uint8} tempnam (Ref{:Uint8},Ref{:Uint8}) shlib
@c Int32 fclose (Ref{:FILE},) shlib
@c Int32 fflush (Ref{:FILE},) shlib
@c Int32 fflush_unlocked (Ref{:FILE},) shlib
@c Ref{:FILE} fopen (Ref{:Uint8},Ref{:Uint8}) shlib
@c Ref{:FILE} freopen (Ref{:Uint8},Ref{:Uint8},Ref{:FILE}) shlib
@c Ref{:FILE} fdopen (:Int32,Ref{:Uint8}) shlib
@c Ref{:FILE} fmemopen (Ref{:None},:size_t,Ref{:Uint8}) shlib
@c Ref{:FILE} open_memstream (Ref{Ref{:Uint8}},Ref{:size_t}) shlib
@c None setbuf (Ref{:FILE},Ref{:Uint8}) shlib
@c Int32 setvbuf (Ref{:FILE},Ref{:Uint8},:Int32,:size_t) shlib
@c None setbuffer (Ref{:FILE},Ref{:Uint8},:size_t) shlib
@c None setlinebuf (Ref{:FILE},) shlib
@c Int32 fprintf (Ref{:FILE},Ref{:Uint8}) shlib
@c Int32 printf (Ref{:Uint8},) shlib
@c Int32 sprintf (Ref{:Uint8},Ref{:Uint8}) shlib
@c Int32 vfprintf (Ref{:FILE},Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 vprintf (Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 vsprintf (Ref{:Uint8},Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 snprintf (Ref{:Uint8},:size_t,Ref{:Uint8}) shlib
@c Int32 vsnprintf (Ref{:Uint8},:size_t,Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 vdprintf (:Int32,Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 dprintf (:Int32,Ref{:Uint8}) shlib
@c Int32 fscanf (Ref{:FILE},Ref{:Uint8}) shlib
@c Int32 scanf (Ref{:Uint8},) shlib
@c Int32 sscanf (Ref{:Uint8},Ref{:Uint8}) shlib
@c Int32 vfscanf (Ref{:FILE},Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 vscanf (Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 vsscanf (Ref{:Uint8},Ref{:Uint8},Ref{:__va_list_tag}) shlib
@c Int32 fgetc (Ref{:FILE},) shlib
@c Int32 getc (Ref{:FILE},) shlib
@c Int32 getchar () shlib
@c Int32 getc_unlocked (Ref{:FILE},) shlib
@c Int32 getchar_unlocked () shlib
@c Int32 fgetc_unlocked (Ref{:FILE},) shlib
@c Int32 fputc (:Int32,Ref{:FILE}) shlib
@c Int32 putc (:Int32,Ref{:FILE}) shlib
@c Int32 putchar (:Int32,) shlib
@c Int32 fputc_unlocked (:Int32,Ref{:FILE}) shlib
@c Int32 putc_unlocked (:Int32,Ref{:FILE}) shlib
@c Int32 putchar_unlocked (:Int32,) shlib
@c Int32 getw (Ref{:FILE},) shlib
@c Int32 putw (:Int32,Ref{:FILE}) shlib
@c Ref{:Uint8} fgets (Ref{:Uint8},:Int32,Ref{:FILE}) shlib
@c Ref{:Uint8} gets (Ref{:Uint8},) shlib
@c __ssize_t __getdelim (Ref{Ref{:Uint8}},Ref{:size_t},:Int32,Ref{:FILE}) shlib
@c __ssize_t getdelim (Ref{Ref{:Uint8}},Ref{:size_t},:Int32,Ref{:FILE}) shlib
@c __ssize_t getline (Ref{Ref{:Uint8}},Ref{:size_t},Ref{:FILE}) shlib
@c Int32 fputs (Ref{:Uint8},Ref{:FILE}) shlib
@c Int32 puts (Ref{:Uint8},) shlib
@c Int32 ungetc (:Int32,Ref{:FILE}) shlib
@c size_t fread (Ref{:None},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fwrite (Ref{:None},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fread_unlocked (Ref{:None},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fwrite_unlocked (Ref{:None},:size_t,:size_t,Ref{:FILE}) shlib
@c Int32 fseek (Ref{:FILE},:Clong,:Int32) shlib
@c Clong ftell (Ref{:FILE},) shlib
@c None rewind (Ref{:FILE},) shlib
@c Int32 fseeko (Ref{:FILE},:__off_t,:Int32) shlib
@c __off_t ftello (Ref{:FILE},) shlib
@c Int32 fgetpos (Ref{:FILE},Ref{:fpos_t}) shlib
@c Int32 fsetpos (Ref{:FILE},Ref{:fpos_t}) shlib
@c None clearerr (Ref{:FILE},) shlib
@c Int32 feof (Ref{:FILE},) shlib
@c Int32 ferror (Ref{:FILE},) shlib
@c None clearerr_unlocked (Ref{:FILE},) shlib
@c Int32 feof_unlocked (Ref{:FILE},) shlib
@c Int32 ferror_unlocked (Ref{:FILE},) shlib
@c None perror (Ref{:Uint8},) shlib
@c Int32 fileno (Ref{:FILE},) shlib
@c Int32 fileno_unlocked (Ref{:FILE},) shlib
@c Ref{:FILE} popen (Ref{:Uint8},Ref{:Uint8}) shlib
@c Int32 pclose (Ref{:FILE},) shlib
@c Ref{:Uint8} ctermid (Ref{:Uint8},) shlib
@c None flockfile (Ref{:FILE},) shlib
@c Int32 ftrylockfile (Ref{:FILE},) shlib
@c None funlockfile (Ref{:FILE},) shlib
@ctypedef CVRhsFn Ref{:Void}
@ctypedef CVRootFn Ref{:Void}
@ctypedef CVEwtFn Ref{:Void}
@ctypedef CVErrHandlerFn Ref{:Void}
@c CVODE_ptr CVodeCreate (:Int32,:Int32) shlib
@c Int32 CVodeSetErrHandlerFn (:CVODE_ptr,:CVErrHandlerFn,Ref{:None}) shlib
@c Int32 CVodeSetErrFile (:CVODE_ptr,Ref{:FILE}) shlib
@c Int32 CVodeSetUserData (:CVODE_ptr,Ref{:None}) shlib
@c Int32 CVodeSetMaxOrd (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxNumSteps (:CVODE_ptr,:Clong) shlib
@c Int32 CVodeSetMaxHnilWarns (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetStabLimDet (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetInitStep (:CVODE_ptr,:RealType) shlib
@c Int32 CVodeSetMinStep (:CVODE_ptr,:RealType) shlib
@c Int32 CVodeSetMaxStep (:CVODE_ptr,:RealType) shlib
@c Int32 CVodeSetStopTime (:CVODE_ptr,:RealType) shlib
@c Int32 CVodeSetMaxErrTestFails (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxNonlinIters (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetMaxConvFails (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetNonlinConvCoef (:CVODE_ptr,:RealType) shlib
@c Int32 CVodeSetIterType (:CVODE_ptr,:Int32) shlib
@c Int32 CVodeSetRootDirection (:CVODE_ptr,Ref{:Int32}) shlib
@c Int32 CVodeSetNoInactiveRootWarn (:CVODE_ptr,) shlib
@c Int32 CVodeInit (:CVODE_ptr,:CVRhsFn,:RealType,:N_Vector) shlib
@c Int32 CVodeReInit (:CVODE_ptr,:RealType,:N_Vector) shlib
@c Int32 CVodeSStolerances (:CVODE_ptr,:RealType,:RealType) shlib
@c Int32 CVodeSVtolerances (:CVODE_ptr,:RealType,:N_Vector) shlib
@c Int32 CVodeWFtolerances (:CVODE_ptr,:CVEwtFn) shlib
@c Int32 CVodeRootInit (:CVODE_ptr,:Int32,:CVRootFn) shlib
@c Int32 CVode (:CVODE_ptr,:RealType,:N_Vector,Ref{:RealType},:Int32) shlib
@c Int32 CVodeGetDky (:CVODE_ptr,:RealType,:Int32,:N_Vector) shlib
@c Int32 CVodeGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeGetNumSteps (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetNumLinSolvSetups (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetNumErrTestFails (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetLastOrder (:CVODE_ptr,Ref{:Int32}) shlib
@c Int32 CVodeGetCurrentOrder (:CVODE_ptr,Ref{:Int32}) shlib
@c Int32 CVodeGetNumStabLimOrderReds (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetActualInitStep (:CVODE_ptr,Ref{:RealType}) shlib
@c Int32 CVodeGetLastStep (:CVODE_ptr,Ref{:RealType}) shlib
@c Int32 CVodeGetCurrentStep (:CVODE_ptr,Ref{:RealType}) shlib
@c Int32 CVodeGetCurrentTime (:CVODE_ptr,Ref{:RealType}) shlib
@c Int32 CVodeGetTolScaleFactor (:CVODE_ptr,Ref{:RealType}) shlib
@c Int32 CVodeGetErrWeights (:CVODE_ptr,:N_Vector) shlib
@c Int32 CVodeGetEstLocalErrors (:CVODE_ptr,:N_Vector) shlib
@c Int32 CVodeGetNumGEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetRootInfo (:CVODE_ptr,Ref{:Int32}) shlib
@c Int32 CVodeGetIntegratorStats (:CVODE_ptr,Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Int32},Ref{:Int32},Ref{:RealType},Ref{:RealType},Ref{:RealType},Ref{:RealType}) shlib
@c Int32 CVodeGetNumNonlinSolvIters (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetNumNonlinSolvConvFails (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVodeGetNonlinSolvStats (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Ref{:Uint8} CVodeGetReturnFlagName (:Clong,) shlib
@c None CVodeFree (Ref{:CVODE_ptr},) shlib

# header: /usr/local/include/cvode/cvode_impl.h
@ctypedef CVodeMem Ref{:Void}
@c Int32 CVEwtSet (:N_Vector,:N_Vector,Ref{:None}) shlib
@c None CVProcessError (:CVodeMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None CVErrHandler (:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:None}) shlib

# header: /usr/local/include/cvode/cvode_spbcgs.h
@ctypedef CVSpilsPrecSetupFn Ref{:Void}
@ctypedef CVSpilsPrecSolveFn Ref{:Void}
@ctypedef CVSpilsJacTimesVecFn Ref{:Void}
@c Int32 CVSpilsSetPrecType (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetGSType (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetMaxl (:CVODE_ptr,:Int32) shlib
@c Int32 CVSpilsSetEpsLin (:CVODE_ptr,:RealType) shlib
@c Int32 CVSpilsSetPreconditioner (:CVODE_ptr,:CVSpilsPrecSetupFn,:CVSpilsPrecSolveFn) shlib
@c Int32 CVSpilsSetJacTimesVecFn (:CVODE_ptr,:CVSpilsJacTimesVecFn) shlib
@c Int32 CVSpilsGetWorkSpace (:CVODE_ptr,Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecSolves (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumLinIters (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumConvFails (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumJtimesEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumRhsEvals (:CVODE_ptr,Ref{:Clong}) shlib
@c Int32 CVSpilsGetLastFlag (:CVODE_ptr,Ref{:Clong}) shlib
@c Ref{:Uint8} CVSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 CVSpbcg (:CVODE_ptr,:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spgmr.h
@c Int32 CVSpgmr (:CVODE_ptr,:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spils.h

# header: /usr/local/include/cvode/cvode_sptfqmr.h
@c Int32 CVSptfqmr (:CVODE_ptr,:Int32,:Int32) shlib
