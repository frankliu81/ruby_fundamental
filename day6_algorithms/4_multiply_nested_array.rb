# my solution doesn't work, arr.size for number returns the bytes
def multiply_nested(arr)
  #print arr
  #puts

  if arr.length == 0
    return 0
  end

  if arr.length == 1
    if arr[0].is_a?(Array)
      return multiply_nested(arr[0])
    else
      return arr[0]
    end
  else
    if arr[0].is_a?(Array)
      return multiply_nested(arr[0]) * multiply_nested(arr[1..-1])
    else
      #puts "#{arr[0]} * multiply(#{arr[1..-1]})"
      return arr[0] * multiply_nested(arr[1..-1])
    end
  end

end

# simpler solution from Tam, but an empty array return 1
# def multiply(array)
#   if array.size == 0
#     1
#   else
#     result = array[0].is_a?(Array) ? multiply(array[0]) : array[0]
#     result * multiply(array[1..-1])
#   end
# end


# simpler solution from Tam, but an empty array return 0
# now the solution looks the same as mine except for using ternary operator
def multiply(array)
  if array.size == 0
    return 0
  end

  if array.size == 1
    result = array[0].is_a?(Array) ? multiply(array[0]) : array[0]
  else
    result = array[0].is_a?(Array) ? multiply(array[0]) : array[0]
    result * multiply(array[1..-1])
  end
end



a = [1, 2, 3]
b = [1, [2, 3, 4], 5]
c = []
d = [[1,2,3], 4]

puts "My multiply_nested"
print "#{a} :"
puts multiply_nested(a)
print "#{b} :"
puts multiply_nested(b)
print "#{c} :"
puts multiply_nested(c)
print "#{d} :"
puts multiply_nested(d)
puts


puts "Tam's multiply"
print "#{a} :"
puts multiply(a)
print "#{b} :"
puts multiply(b)
print "#{c} :"
puts multiply(c)
print "#{d} :"
puts multiply(d)
puts
