# sub-array is contiguous elements within an array
# [-3, -5, 0, 8, 10]
# [-3], [-3, 5], [-3, 5, 0] ...
# should return [8, 10], [0, 8, 10]

$sub_array_hash = {}

def largest_hash_value(hash)
  hash.max_by{|k,v| v}
end

# put sub arrays into hash
def sum_sub_arrays_from_index(arr, index)
  for i in (index..arr.count)
    sub_array = arr.slice(index, i)
    $sub_array_hash[sub_array] = sub_array.reduce(0) {|sum, x| sum + x}
  end
end

arr = [-3, -5, 0, 8, 10]
#puts [-3, -5, 0].reduce(0) {|sum, x| sum + x}
for index in (0..arr.count)
  sum_sub_arrays_from_index(arr, index)
end

puts $sub_array_hash

max_key_value = largest_hash_value($sub_array_hash)
p "Max sub-array: " + max_key_value[0].to_s + " sum - " +  max_key_value[1].to_s
