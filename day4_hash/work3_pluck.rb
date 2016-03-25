# Implement pluck
# Implement pluck, which takes an array of objects and a property name, and returns an array containing the named property of each object.
# For example:
# pluck([{'a':1}, {'a':2}], 'a') // -> [1,2]

def pluck(arr, prop_name)
  arr_result = []
  arr.each do |elem|
    # puts elem[prop_name.to_sym]
    if elem[prop_name.to_sym] == nil
      arr_result << nil
    else
      arr_result << elem[prop_name.to_sym]
      # puts arr_result
    end

  end
  arr_result
end

print pluck([{a:1}, {a:2}, {b: 3}], 'a')
puts
