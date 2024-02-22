require 'procify'

def foo
  "foo"
end

a = proc(&method(:foo))
b = proc.foo

p a.call # => "foo"
p b.call # => "foo"

def foo
  "bar"
end

p a.call # => "foo"
p b.call # => "bar"