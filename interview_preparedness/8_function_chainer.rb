# write a method call chain, taking in array of function names as symbols
require "byebug"

def add num
  num + 1
end

def mult num
  num * 30
end

def chain(num, methods)
  methods.reduce(num) {
    |result, method|
    # puts result
    send(method, result)
  }
end


puts chain(2, [:add, :mult])
# => returns 90
