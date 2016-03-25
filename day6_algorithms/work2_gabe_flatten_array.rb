def flatten_array(array)
  if array.empty?
    []
  elsif array[0].is_a? Array
    flatten_array(array[0]) + flatten_array(array[1..-1])
  else
    [array[0]] + flatten_array(array[1..-1])
  end
end

a = [1,2,3]
b = [[1,2,3]]
c = [1, 2, 3, [4, 5]]
d = [[1,2,3], [4,5]]

print flatten_array(a)
puts
print flatten_array(b)
puts
print flatten_array(c)
puts
print flatten_array(d)
puts
