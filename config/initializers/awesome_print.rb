module Kernel
  def puts_with_trace(*args)
    puts_without_trace(*args)
    bc = Rails.backtrace_cleaner.deep_dup
    bc.remove_silencers!
    called_from = bc.clean(caller(@puts_trace_caller_index || 1, 1)).first
    puts_without_trace("   \\_ \e[33mprinted from:\e[0m #{called_from || '?'}")
    @puts_trace_caller_index = nil
  end

  def ap_with_trace(object, options = {})
    @puts_trace_caller_index = 3
    ap_without_trace(object, options)
  end

  alias_method_chain(:puts, :trace)
  alias_method_chain(:ap, :trace)
end