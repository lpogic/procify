require 'procify'

def cur a, b
  a + b
end

cur_proc = proc.cur(7)
puts cur_proc.call(4) # => 11