require 'procify'

a = []
b = a.proc << 1
b.call
b.call
b.call
p a # => [1, 1, 1]