require 'procify'

class Foo
  def initialize arg
    @arg = arg
    ObjectSpace.define_finalizer(self, Foo.proc.finalize(arg))
  end

  def self.finalize arg
    p arg
  end
end

foo = Foo.new "foo"
foo = nil
GC.start # => "foo"
