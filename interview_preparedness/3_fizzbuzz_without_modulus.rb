# javascript
# function isDiv(num, div)
# {
#   return num/div === Math.floor(num/div)
# }

# ruby
def is_div(num, div)
  num.to_f/div == (num/div).floor
end
# puts isDiv(18, 6)
# puts isDiv(18, 7)

def fizz_buzz
  (1..100).each do |n|
    if is_div(n, 15)
      puts "FIZZBUZZ"
    elsif is_div(n, 3)
      puts "FIZZ"
    elsif is_div(n, 5)
      puts "BUZZ"
    else
      puts n
    end
  end
end

fizz_buzz
