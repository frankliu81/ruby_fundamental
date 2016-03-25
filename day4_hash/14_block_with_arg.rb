# yield with parameter

def my_method
    puts ">>>>>"
    x = 10
    yield(x) if block_given?
    puts "<<<<<"
end

my_method do |x|
  puts x * x
end

my_method do |number|
  puts number + number
end
