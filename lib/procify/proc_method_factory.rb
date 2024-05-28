class ProcMethodFactory
  def initialize source
    @source = source
  end

  def method_missing name, *stored_arguments, **stored_named_arguments
    source = @source
    proc do |*arguments, **named_arguments, &b|
      method = source.method name
      arity = method.arity
      arg = [*stored_arguments, *arguments]
      if arity >= 0
        source.send(name, *arg[...arity], **stored_named_arguments, **named_arguments, &b)
      else
        source.send(name, *arg, **stored_named_arguments, **named_arguments, &b)
      end
    end
  end

  def respond_to? name
    @source.respond_to? name
  end
end