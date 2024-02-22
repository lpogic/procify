require 'procify'

def foo
  "foo"
end

foo_proc = proc.foo
puts foo_proc.call # => "foo"
