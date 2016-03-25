# Ian - idfsimpson

output=[]
def flatten_remix_2(array)
  #p array
  if !(array[0].is_a?(Array)) && array.size <= 1
    array
  # Frank
  #elsif array[0].is_a?(Array) && array.size == 1
  #  flatten_remix_2(array[0])
  # End Frank
  else
    result = array[0].is_a?(Array) ? flatten_remix_2(array[0]) : [array[0]]
    # binding.pry
    result + ( flatten_remix_2(array[1..-1]))
  end
end

p flatten_remix_2([1,[3,9]])

a = [1,2,3]
b = [[1,2,3]]
c = [1, 2, 3, [4, 5]]
d = [[1,2,3], [4,5]]

print flatten_remix_2(a)
puts
print flatten_remix_2(b)
puts
print flatten_remix_2(c)
puts
print flatten_remix_2(d)
puts
