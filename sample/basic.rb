require 'procify'

# 1)

def foo
  "foo"
end

foo_proc = proc.foo
puts foo_proc.call # => "foo"

# 2)

def bar argument
  argument * 2
end

bar_proc = proc.bar
puts bar_proc.call 5 # => 10

# 3)

class Foo
  def baz
    "baz"
  end
end

foo_instance = Foo.new
baz_proc = foo_instance.proc.baz
puts baz_proc.call # => "baz"

# 4)

def cur a, b
  a + b
end

cur_proc = proc.cur(7)
puts cur_proc.call(4) # => 11