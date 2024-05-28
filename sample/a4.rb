require 'procify'

def cur a, b, c: 5
  a + b + c
end

cur_proc = proc.cur(7, c: 5)
puts cur_proc.call(4) # => 16
puts cur_proc.call(3, c: -10) # => 0