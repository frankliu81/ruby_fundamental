def change_maker(x, quarter=0, dime=0, nickel=0, penny=0)
  if x >= 25
    change_maker(x - 25, quarter + 1)
  elsif x >= 10
    change_maker(x - 10, quarter, dime + 1)
  elsif x >= 5
    change_maker(x - 5, quarter, dime, nickel + 1)
  elsif x >= 1
    change_maker(x - 1, quarter, dime, nickel, penny + 1)
  end
    if x == 0
      puts "Quarters: #{quarter}, Dimes: #{dime}, Nickels: #{nickel}, Pennies: #{penny}"
    end
end
z=rand(1..100)
puts "Change amount: #{z}"
change_maker(z)
