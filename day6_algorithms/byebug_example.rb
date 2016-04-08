require "byebug"

def function1
  function2 
  puts "function1: 1"
  puts "function1: 2"
  puts "function1: 3"
end

def function2
  puts "function2: 1"
  puts "function2: 2"
  puts "function2: 3"
end

byebug


# s to step into function1
# fin to finish the current frame (ie. step out of function1)
function1
function2
