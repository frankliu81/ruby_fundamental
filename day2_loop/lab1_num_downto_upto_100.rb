print "Give me a number"
num = gets.chomp.to_i

# puts num
#begin
#  puts num
#  if num > 100
#    num -= 1
#  else
#    num += 1
#  end
#  puts num
#while (num != 100)

# for loop only goes up
if num > 100
  num.downto(100) do |i|
    puts i
  end
else
  num.upto(100) do |i|
    puts i
  end
end
