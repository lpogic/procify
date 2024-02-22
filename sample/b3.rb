require 'procify'

def foo
  "foo"
end

a = proc{ foo }
b = proc.foo

p a.call # => "foo"
p b.call # => "foo"

class Bar
  def foo
    "bar"
  end
end

bar = Bar.new
p bar.instance_exec(&a) # => "bar"
p bar.instance_exec(&b) # => "foo"