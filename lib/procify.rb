require_relative 'procify/proc_method_factory'

class Object
  def proc &block
    block_given? ? Kernel.proc(&block) : ProcMethodFactory.new(self)
  end
end