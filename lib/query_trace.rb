module QueryTrace
  def self.enable
    ::ActiveRecord::LogSubscriber.send(:include, self)
  end

  def self.append_features(klass)
    super
    klass.class_eval do
      unless method_defined?(:log_info_without_trace)
        alias_method :log_info_without_trace, :sql
        alias_method :sql, :log_info_with_trace
      end
    end
  end

  def log_info_with_trace(event)
    log_info_without_trace(event)
    trace_logs = Rails.backtrace_cleaner.clean(caller).first(1)
    if event.payload[:name] != 'SCHEMA'
      trace_logs.each do |trace_log|
        logger.debug("   \\_ \e[33mCalled from:\e[0m " + trace_log)
      end
    end
  end
end