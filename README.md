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
### 1. Basic method to proc conversion
```RUBY
require 'procify'

def foo
  "foo"
end

foo_proc = proc.foo
puts foo_proc.call # => "foo"

```

### 2. Method with argument
```RUBY
require 'procify'

def bar argument
  argument * 2
end

bar_proc = proc.bar
puts bar_proc.call 5 # => 10

```

### 3. Custom object method to proc conversion
```RUBY
require 'procify'

class Foo
  def baz
    "baz"
  end
end

foo_instance = Foo.new
baz_proc = foo_instance.proc.baz
puts baz_proc.call # => "baz"

```

### 4. Argument providing during conversion
```RUBY
require 'procify'

def cur a, b
  a + b
end

cur_proc = proc.cur(7)
puts cur_proc.call(4) # => 11
```

### 5. Unlike using #method, freshest object method version is always called
```RUBY
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
```

### 6. The conversion can be performed even before the actual method is defined
```RUBY
require 'procify'

a = proc(&method(:foo)) # NameError: undefined method `foo'
b = proc.foo # => #<Proc:0x...

def foo
  "foo"
end

p b.call # => "foo"

```

### 7. The converted method is insensitive to context changes
```RUBY
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
```

### 8.
```RUBY
require 'procify'

a = 1
b = a.proc + 2
p b.call # => 3
a = 4
p b.call # => 3
```

### 9.
```RUBY
require 'procify'

a = []
b = a.proc << 1
b.call
b.call
b.call
p a # => [1, 1, 1]
```

### 10.
```RUBY
require 'procify'

a = [1, 2]
second = a.proc[1]
p second.call # => 2
a.unshift 0
p second.call # => 1

```

### 11.
```RUBY
require_relative '../lib/procify'

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

```

Authors
---
Łukasz Pomietło (oficjalnyadreslukasza@gmail.com)
