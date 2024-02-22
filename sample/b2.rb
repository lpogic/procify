require 'procify'

a = proc(&method(:foo)) # NameError: undefined method `foo'
b = proc.foo # => #<Proc:0x...

def foo
  "foo"
end

p b.call # => "foo"
