require "benchmark"

# write a method that returns the maximum number in array in two ways

# using loop
def max_in_array_loop(arr)
  max = arr[0]
  arr.each do |x|
    if x > max
      max = x
    end
  end
  max
end

# this is for printing the stack trace with variable number of tabs
$recursion_depth=-1

# Frank's using recursion
def max_in_array_recursion(arr)

  # boundary condition: testing edge case of empty array
  if arr.size == 0
    return 0
  end

  # base condition: if the arr size is 1, the only element is max
  if arr.size == 1
    arr[0]
  else

    # stacking the recursion calls
    $recursion_depth += 1;
    puts "\t"*$recursion_depth + "is #{arr[0]} > max_in_array_recursion#{arr[1..-1]}"


    # recursive step: store max as the maximum of the reduced array
    max = max_in_array_recursion(arr[1..-1])

    # unwinding the stack

    if arr[0] > max
      puts "\t"*$recursion_depth + "max = #{arr[0]} because #{arr[0]} > #{max}"
    else
      puts "\t"*$recursion_depth + "max = #{max} because #{max} > #{arr[0]}"
    end

    $recursion_depth -= 1;

    # if the first element is greater than that max, then return first element
    # else return max
    arr[0] > max ? arr[0] : max

  end

end

# Here is how you visualize the code
# Let's say you have [1, 5, 7, 3, 2]
# => stacking the recursion calls
# is 1 > max_in_array_recursion[5,7,3,2]
#   is 5 > max_in_array_recursion[7,3,2]
#     is 7 > max_in_array_recursion[3,2]
#       is 3 > max_in_array_recursion[2]
#         is 3 > 2
#  => unwinding the stack
#       max = 3 because 3 > 2
#     max = 7 because 7 > 3
#   max = 7 because 5 is not > 7
# max = 7 because 1 is not > 7


# Sam's using recursion
# to reason with this, it starts comparison from
# the tail
def max_num(array,max=array[0])
  begin
    if array.count == 1
      array[0] > max ? array[0] : max
    else
      max = array[1] if array[1] > max
      max_num(array[1..-1],max)
    end
  rescue Exception => e
    puts e.message
  end
end

arr = [1,5,7,3,2]
#arr.shuffle!
#binding.pry

time = Benchmark.realtime do
  puts max_in_array_loop(arr)
end
puts "max_in_array_loop: #{time}"

time = Benchmark.realtime do
  puts max_in_array_recursion(arr)
end
puts "max_in_array_recursion: #{time}"

puts max_num(arr)
