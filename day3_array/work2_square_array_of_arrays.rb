# square array of array
# solution1 give new_array
array = [[2,3,4],[5,6,7],[6,7,8]]
# new_array = []
#
# for i in 0...array.length
#   inner_array = array[i]
#   new_inner_array = []
#   for j in 0...inner_array.length
#       new_inner_array.push(inner_array[j]**2)
#   end
#   new_array.push(new_inner_array)
# end
#
# print new_array

# solution2 map existing array
array.map do |inner_array|
  inner_array.map! { |element| element**2 }
end
print array

puts
