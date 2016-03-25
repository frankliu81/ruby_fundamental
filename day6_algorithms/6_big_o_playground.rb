# O(1)
my_array = [1,2,3,4,5]

# accessing a single element
puts my_array[5]

my_array = [1,2,3,4,5,6,7,8,9,10]
puts my_array[5]


# O(n)
my_array = [1,2,3,4,5]
my_array.each do |n|
  puts n
end

my_array = [1,2,3,4,5,6,7,8,9,10]
my_array.each do |n|
  puts n
end

# O(n^2)
my_array.each do |n|
  my_array.each do |j|
    puts "#{n} #{j}"
  end
end
