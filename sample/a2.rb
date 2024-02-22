require 'procify'

def bar argument
  argument * 2
end

bar_proc = proc.bar
puts bar_proc.call 5 # => 10
