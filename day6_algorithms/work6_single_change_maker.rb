def change_maker(n, quarter=0, dime=0, nickel=0, penny=0)

  # base case has to be n == 0, or else
  # n = 15 where we have 1 dime plus 1 nickel with no penny would break
  if n == 0
    return [quarter, dime, nickel, penny]
  end

  if n-25 >= 0
    change_maker(n-25, quarter+1, dime, nickel, penny)
  elsif n-10 >= 0
    change_maker(n-10, quarter, dime+1, nickel, penny)
  elsif n-5 >= 0
    change_maker(n-5, quarter, dime, nickel+1, penny)
  elsif n-1 >= 0
    change_maker(n-1, quarter, dime, nickel, penny+1)
  end

end


#z = rand(1..100)
# n = 56 # works
# n = 15 # works
# n = 90 # works
n = 15
puts "Change amount: #{n}"
print change_maker(n)
puts
