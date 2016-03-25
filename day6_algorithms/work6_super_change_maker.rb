# super change recursion: this version has the while, see super change maker 2
# Write a recursive function that will take a number between 1 and a hundred
# and returns an array of ALL possible set of coins that will add up to the
# number. User coins: 25, 10, 5 and 1 cent

# fix_q parameter stands for locking the quarter value when we do
# the recursive expansion of the sub-change when we subtract a number
# of quarters. We want to avoid expanding on quarters again repeatedly.
# One way to think about this is there would be duplication
# if we remove a quarter first then a dime or
# or if we remove a dime first then a quarter from the total, and we don't
# want to count that twice
# So after we remove a quarter, we lock the quarter field from
# changing, by setting fix_q to true in the next recursive step
def change_maker(n, fix_q=false, fix_d=false, fix_n=false)

  result = []
  # puts "change_maker(#{n})"

  # base case: return no quarter, no dime, no nickel, no penny
  if n == 0
    return result.push([0,0,0,0])
  end

  # quarter case
  if fix_q != true
    i = 1
    # from the case of 1 quarter to as many quarters as can be used to make up n
    while i*25 <= n do
      # return from change maker the subset of changes for n-(i quarters)
      # and iterate through each combination of change
      # we pass in fix_q = true, so in the recursive expansion, we don't
      # go into this while loop again and get duplicates since we already
      # loop through with while
      change_maker(n-i*25, true).each do |x|
        # http://stackoverflow.com/questions/2682411/ruby-sum-corresponding-members-of-two-arrays
        #
        # ruby 1.9 syntax, too bad they didn't add a sum() function afaik
        # [1,2,3].zip([4,5,6]).map {|a| a.inject(:+)} # [5,7,9]
        # zip returns [1,4], [2,5], [3,6], and map sums each sub-array.
        #
        # merge the results of the recursion with i quarters
        # we are summing [i,0,0,0] with each [q,d,n,p]
        result.push( [i,0,0,0].zip(x).map{ |a| a.inject(:+) } )
      end
      i += 1
    end
  end

  # dime case
  if fix_d != true
    j = 1
    # from the case of 1 dime to as many dimes as can be used to make up n
    while j*10 <= n do
      change_maker(n-j*10, true, true).each do |x|
        # merge the results of the recursion with j dimes
        result.push( [0,j,0,0].zip(x).map{ |a| a.inject(:+) } )
      end
      j += 1
    end
  end

  if fix_n != true
    # nickel case
    k = 1
    # from the case of 1 nickel to as many nickels as can be used to make up n
    while k*5 <= n do
      change_maker(n-k*5, true, true, true).each do |x|
        # merge the results of the recursion with k nickels
        result.push( [0,0,k,0].zip(x).map{ |a| a.inject(:+) } )
      end
      k += 1
    end
  end

  # all penny
  result.push([0,0,0,n])

end

#z=rand(1..100)
#z=98 # 213 combinations
z=94 # 187 combinations
#z=90
#z=56
#z=55
puts "Change amount: #{z}"
puts "Output format: [quarters, dimes, nickels, pennies]"
# print all the combinations of changes
total_number_combinations = 0
result = change_maker(z).sort!
result.each do |x|
  print "#{x} "
  total_number_combinations += 1
end

puts
puts "Total Number of Combinations: #{total_number_combinations}"
puts
