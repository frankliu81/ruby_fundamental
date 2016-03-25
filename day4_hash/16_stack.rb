# stack in function calls
# FILO

def a
  b
  puts "I'm in A"
end

def b
  c
  puts "I'm in B"
end

def c
  puts "I'm in C"
end

a

# a gets called, b gets put on top of a on the stack
