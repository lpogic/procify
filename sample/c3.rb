require 'procify'

a = [1, 2]
second = a.proc[1]
p second.call # => 2
a.unshift 0
p second.call # => 1
