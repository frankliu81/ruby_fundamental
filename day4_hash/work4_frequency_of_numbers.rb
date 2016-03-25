# Given an array of number such as:
array = [1, 2, 3, 4, 4, 4, 2, 3, 3, 3]
# Write a peice of code that will generate a hash of frequencies that looks like:
# {1 => 1, 2 => 2, 3 => 4, 4 => 3}

hash_of_frequencies = Hash.new(0)
array.each do |number|
  hash_of_frequencies[number] += 1
end

print hash_of_frequencies
puts
