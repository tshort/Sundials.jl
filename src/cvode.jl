
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

# header: /usr/local/include/cvode/cvode_band.h
@ctypedef CVDlsDenseJacFn Ptr{:Void}
@ctypedef CVDlsBandJacFn Ptr{:Void}
@c Int32 CVDlsSetDenseJacFn (Ref{:Void},:CVDlsDenseJacFn) shlib
@c Int32 CVDlsSetBandJacFn (Ref{:Void},:CVDlsBandJacFn) shlib
@c Int32 CVDlsGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVDlsGetNumJacEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVDlsGetNumRhsEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVDlsGetLastFlag (Ref{:Void},Ref{:Clong}) shlib
@c Ref{:Uint8} CVDlsGetReturnFlagName (:Clong,) shlib
@c Int32 CVBand (Ref{:Void},:Clong,:Clong,:Clong) shlib

# header: /usr/local/include/cvode/cvode_bandpre.h
@c Int32 CVBandPrecInit (Ref{:Void},:Clong,:Clong,:Clong) shlib
@c Int32 CVBandPrecGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVBandPrecGetNumRhsEvals (Ref{:Void},Ref{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_bbdpre.h
@ctypedef CVLocalFn Ptr{:Void}
@ctypedef CVCommFn Ptr{:Void}
@c Int32 CVBBDPrecInit (Ref{:Void},:Clong,:Clong,:Clong,:Clong,:Clong,:realtype,:CVLocalFn,:CVCommFn) shlib
@c Int32 CVBBDPrecReInit (Ref{:Void},:Clong,:Clong,:realtype) shlib
@c Int32 CVBBDPrecGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVBBDPrecGetNumGfnEvals (Ref{:Void},Ref{:Clong}) shlib

# header: /usr/local/include/cvode/cvode_dense.h
@c Int32 CVDense (Ref{:Void},:Clong) shlib

# header: /usr/local/include/cvode/cvode_diag.h
@c Int32 CVDiag (Ref{:Void},) shlib
@c Int32 CVDiagGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVDiagGetNumRhsEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVDiagGetLastFlag (Ref{:Void},Ref{:Clong}) shlib
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
@ctypedef __timer_t Ptr{:Void}
@ctypedef __blksize_t Int64
@ctypedef __blkcnt_t Int64
@ctypedef __blkcnt64_t Int64
@ctypedef __fsblkcnt_t Uint64
@ctypedef __fsblkcnt64_t Uint64
@ctypedef __fsfilcnt_t Uint64
@ctypedef __fsfilcnt64_t Uint64
@ctypedef __ssize_t Int64
@ctypedef __loff_t __off64_t
@ctypedef __qaddr_t Ptr{:__quad_t}
@ctypedef __caddr_t Ptr{:Uint8}
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
@c size_t _IO_sgetn (Ref{:_IO_FILE},Ref{:Void},:size_t) shlib
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
@c Ref{:FILE} fmemopen (Ref{:Void},:size_t,Ref{:Uint8}) shlib
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
@c size_t fread (Ref{:Void},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fwrite (Ref{:Void},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fread_unlocked (Ref{:Void},:size_t,:size_t,Ref{:FILE}) shlib
@c size_t fwrite_unlocked (Ref{:Void},:size_t,:size_t,Ref{:FILE}) shlib
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
@c Ref{:Void} CVodeCreate (:Int32,:Int32) shlib
@c Int32 CVodeSetErrHandlerFn (Ref{:Void},:CVErrHandlerFn,Ref{:Void}) shlib
@c Int32 CVodeSetErrFile (Ref{:Void},Ref{:FILE}) shlib
@c Int32 CVodeSetUserData (Ref{:Void},Ref{:Void}) shlib
@c Int32 CVodeSetMaxOrd (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetMaxNumSteps (Ref{:Void},:Clong) shlib
@c Int32 CVodeSetMaxHnilWarns (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetStabLimDet (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetInitStep (Ref{:Void},:realtype) shlib
@c Int32 CVodeSetMinStep (Ref{:Void},:realtype) shlib
@c Int32 CVodeSetMaxStep (Ref{:Void},:realtype) shlib
@c Int32 CVodeSetStopTime (Ref{:Void},:realtype) shlib
@c Int32 CVodeSetMaxErrTestFails (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetMaxNonlinIters (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetMaxConvFails (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetNonlinConvCoef (Ref{:Void},:realtype) shlib
@c Int32 CVodeSetIterType (Ref{:Void},:Int32) shlib
@c Int32 CVodeSetRootDirection (Ref{:Void},Ref{:Int32}) shlib
@c Int32 CVodeSetNoInactiveRootWarn (Ref{:Void},) shlib
@c Int32 CVodeInit (Ref{:Void},:CVRhsFn,:realtype,:N_Vector) shlib
@c Int32 CVodeReInit (Ref{:Void},:realtype,:N_Vector) shlib
@c Int32 CVodeSStolerances (Ref{:Void},:realtype,:realtype) shlib
@c Int32 CVodeSVtolerances (Ref{:Void},:realtype,:N_Vector) shlib
@c Int32 CVodeWFtolerances (Ref{:Void},:CVEwtFn) shlib
@c Int32 CVodeRootInit (Ref{:Void},:Int32,:CVRootFn) shlib
@c Int32 CVode (Ref{:Void},:realtype,:N_Vector,Ref{:realtype},:Int32) shlib
@c Int32 CVodeGetDky (Ref{:Void},:realtype,:Int32,:N_Vector) shlib
@c Int32 CVodeGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVodeGetNumSteps (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetNumRhsEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetNumLinSolvSetups (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetNumErrTestFails (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetLastOrder (Ref{:Void},Ref{:Int32}) shlib
@c Int32 CVodeGetCurrentOrder (Ref{:Void},Ref{:Int32}) shlib
@c Int32 CVodeGetNumStabLimOrderReds (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetActualInitStep (Ref{:Void},Ref{:realtype}) shlib
@c Int32 CVodeGetLastStep (Ref{:Void},Ref{:realtype}) shlib
@c Int32 CVodeGetCurrentStep (Ref{:Void},Ref{:realtype}) shlib
@c Int32 CVodeGetCurrentTime (Ref{:Void},Ref{:realtype}) shlib
@c Int32 CVodeGetTolScaleFactor (Ref{:Void},Ref{:realtype}) shlib
@c Int32 CVodeGetErrWeights (Ref{:Void},:N_Vector) shlib
@c Int32 CVodeGetEstLocalErrors (Ref{:Void},:N_Vector) shlib
@c Int32 CVodeGetNumGEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetRootInfo (Ref{:Void},Ref{:Int32}) shlib
@c Int32 CVodeGetIntegratorStats (Ref{:Void},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Clong},Ref{:Int32},Ref{:Int32},Ref{:realtype},Ref{:realtype},Ref{:realtype},Ref{:realtype}) shlib
@c Int32 CVodeGetNumNonlinSolvIters (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetNumNonlinSolvConvFails (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVodeGetNonlinSolvStats (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Ref{:Uint8} CVodeGetReturnFlagName (:Clong,) shlib
@c None CVodeFree (Ref{Ref{:Void}},) shlib

# header: /usr/local/include/cvode/cvode_impl.h
@ctypedef CVodeMem Ptr{:Void}
@c Int32 CVEwtSet (:N_Vector,:N_Vector,Ref{:Void}) shlib
@c None CVProcessError (:CVodeMem,:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8}) shlib
@c None CVErrHandler (:Int32,Ref{:Uint8},Ref{:Uint8},Ref{:Uint8},Ref{:Void}) shlib

# header: /usr/local/include/cvode/cvode_spbcgs.h
@ctypedef CVSpilsPrecSetupFn Ptr{:Void}
@ctypedef CVSpilsPrecSolveFn Ptr{:Void}
@ctypedef CVSpilsJacTimesVecFn Ptr{:Void}
@c Int32 CVSpilsSetPrecType (Ref{:Void},:Int32) shlib
@c Int32 CVSpilsSetGSType (Ref{:Void},:Int32) shlib
@c Int32 CVSpilsSetMaxl (Ref{:Void},:Int32) shlib
@c Int32 CVSpilsSetEpsLin (Ref{:Void},:realtype) shlib
@c Int32 CVSpilsSetPreconditioner (Ref{:Void},:CVSpilsPrecSetupFn,:CVSpilsPrecSolveFn) shlib
@c Int32 CVSpilsSetJacTimesVecFn (Ref{:Void},:CVSpilsJacTimesVecFn) shlib
@c Int32 CVSpilsGetWorkSpace (Ref{:Void},Ref{:Clong},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumPrecSolves (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumLinIters (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumConvFails (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumJtimesEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetNumRhsEvals (Ref{:Void},Ref{:Clong}) shlib
@c Int32 CVSpilsGetLastFlag (Ref{:Void},Ref{:Clong}) shlib
@c Ref{:Uint8} CVSpilsGetReturnFlagName (:Clong,) shlib
@c Int32 CVSpbcg (Ref{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spgmr.h
@c Int32 CVSpgmr (Ref{:Void},:Int32,:Int32) shlib

# header: /usr/local/include/cvode/cvode_spils.h

# header: /usr/local/include/cvode/cvode_sptfqmr.h
@c Int32 CVSptfqmr (Ref{:Void},:Int32,:Int32) shlib

