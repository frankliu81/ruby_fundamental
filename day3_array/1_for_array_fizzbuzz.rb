# divisible by 3, print FIZZ
# divisible by 5, print BUZZ
# divisible by 15, print FIZZBUZZ

arr = Array(1..100)
#print arr

for index in (0..arr.length)
  puts index
  puts index.class
  number = index + 1
  if (number % 3 == 0 && number % 5 == 0)
    arr[index] = "FIZZBUZZ"
  elsif (number % 3 == 0)
    arr[index] = "FIZZ"
  elsif (number % 5 == 0)
    arr[index] = "BUZZ"
  end
end

print arr

# http://stackoverflow.com/questions/24796819/difference-between-3-dot-range-operator-and-2-dot-range-operator-in-flip-flop-ru
#The difference between 2 dots and 3 dots in Ruby is inclusion. For example
#(1..100)
#=> All numbers starting from 1 and ending at 100 INCLUDING 100
#(1...100)
#=> All numbers starting from 1 that are less than 100
