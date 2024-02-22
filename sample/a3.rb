require 'procify'

class Foo
  def baz
    "baz"
  end
end

foo_instance = Foo.new
baz_proc = foo_instance.proc.baz
puts baz_proc.call # => "baz"
