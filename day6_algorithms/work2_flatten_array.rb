# reverse engineer Array's 'flatten' method using recursion
# gabe's flatten array is much simpler
# after taking away the if arr.size == 1 case,
# and replacing concat with +, my solution would be the same as his

def array_flatten(arr)
  #puts "array_flatten: "
  #print arr
  #puts

  # boundary condition: empty array, then return empty array
  if arr.size == 0
    return []
  end

  # the if case for array size 1 is not necessary,
  # since we would handle that anyway with concatenating
  # with the base case.
  # result = [3]
  # result[1..-1] => [] would get us to the base base
  # if arr.size == 1
  #   # if the first element is an array, recursively flatten it
  #   #print arr
  #   #puts
  #
  #   #arr[0].is_a?(Array) ? array_flatten(arr[0]) : arr
  #   if arr[0].is_a?(Array)
  #     #print arr[0]
  #     #puts
  #     array_flatten(arr[0])
  #   else
  #     #print arr
  #     #puts
  #     arr
  #   end
  #
  # else
    #puts "array_flatten: else"

    # if the first element is an array, recursively flatten it
    # and join with the recursive flattening of the rest of the array
    # otherwise, take the first element and join with the recursive
    # flattening of the rest of the array
    result = []

    if arr[0].is_a?(Array)
       result.concat(array_flatten(arr[0]))
       #print result
       #puts
    else
       # concatenate doesn't work for arr[0]
       # we can either use shuffle <<
       # result << arr[0]
       # or concatenate the arr[0] as an array
       result.concat([arr[0]])
       #print result
       #puts
    end

    #print result
    #puts
    result.concat(array_flatten(arr[1..-1]))

  #end

end

a = [1,2,3]
b = [[1,2,3]]
c = [1, 2, 3, [4, 5]]
d = [[1,2,3], [4,5]]

print array_flatten(a)
puts
print array_flatten(b)
puts
print array_flatten(c)
puts
print array_flatten(d)
puts
