# in this case we don't need to call chomp, because we are doing string to integer
print "Give me number 1: "
a = gets.to_i
print "Give me number 2: "
b = gets.to_i
c = a * b
puts "The multiplication result is #{c}."
