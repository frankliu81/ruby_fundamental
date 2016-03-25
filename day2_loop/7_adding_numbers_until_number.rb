total = 0
while true
  print "Give me a number: "
  number = gets.chomp
  if number == "exit"
    puts "The sum of your number is: #{total}"
    break
  end
  total += number.to_i
end
