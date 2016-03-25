print "Input a number: "
number = gets.to_i
for i in 1..number
  puts " "*(number-i) + "O "*i
end
