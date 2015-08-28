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

#header: arkode/arkode.h

#header: arkode/arkode_band.h

#header: arkode/arkode_bandpre.h

#header: arkode/arkode_bbdpre.h

#header: arkode/arkode_dense.h

#header: arkode/arkode_direct.h

#header: arkode/arkode_impl.h

#header: arkode/arkode_pcg.h

#header: arkode/arkode_sparse.h

#header: arkode/arkode_spbcgs.h

#header: arkode/arkode_spfgmr.h

#header: arkode/arkode_spgmr.h

#header: arkode/arkode_spils.h

#header: arkode/arkode_sptfqmr.h
