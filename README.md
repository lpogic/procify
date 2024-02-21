Procify
===

Method to proc conversion path

Installation
---
```
gem install procify
```

Usage
---
```RUBY
require 'procify'

# 1)

def foo
  "foo"
end

foo_proc = proc.foo
foo_proc.call # => "foo"

# 2)

def bar argument
  argument * 2
end

bar_proc.call 5 # => 10

# 3)

class Foo
  def baz
    "baz"
  end
end

foo_instance = Foo.new
baz_proc = foo_instance.proc.baz
baz_proc.call # => "baz"

# 4)

def cur a, b
  a + b
end

cur_proc = proc.cur(7)
cur.call(4) # => 11
```

Authors
---
Łukasz Pomietło (oficjalnyadreslukasza@gmail.com)
