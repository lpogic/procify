require 'procify'

a = 1
b = a.proc + 2
p b.call # => 3
a = 4
p b.call # => 3