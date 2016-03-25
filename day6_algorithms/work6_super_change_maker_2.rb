# super change recursion 2 (got rid of while):
# Write a recursive function that will take a number between 1 and a hundred
# and returns an array of ALL possible set of coins that will add up to the
# number. User coins: 25, 10, 5 and 1 cent

# q_fixed parameter stands for locking the quarter value when we do
# the recursive expansion of the sub-change when we subtract a number
# of quarters. We want to avoid expanding on quarters again repeatedly.
# One way to think about this is there would be duplication
# if we remove a quarter first then a dime or
# or if we remove a dime first then a quarter from the total, and we don't
# want to count that twice
# So after we remove a quarter, we lock the quarter field from
# changing, by setting q_fixed to true in the next recursive step
def change_maker(n, q_fixed=false, d_fixed=false, n_fixed=false)

  result = []
  # puts "change_maker(#{n})"

  # boundary case: return no quarter, no dime, no nickel, no penny
  if n == 0
    return result.push([0,0,0,0])
  end

  # quarter case
  if q_fixed != true
      # return from change maker recursion the subset of changes for n-1 quarter
      # and iterate through each combination of change
      # we pass in q_fixed = true, so in the recursive expansion, we don't
      # go into this while loop again and get duplicates since we already
      # loop through with while
      if n >= 25
        change_maker(n-25).each do |x|
          # http://stackoverflow.com/questions/2682411/ruby-sum-corresponding-members-of-two-arrays
          #
          # ruby 1.9 syntax, too bad they didn't add a sum() function afaik
          # [1,2,3].zip([4,5,6]).map {|a| a.inject(:+)} # [5,7,9]
          # zip returns [1,4], [2,5], [3,6], and map sums each sub-array.
          #
          # merge the results of the recursion with i quarters
          # we are summing [i,0,0,0] with each [q,d,n,p]
          # result.push( [1,0,0,0].zip(x).map{ |a| a.inject(:+) } )

          # we calculated in change_maker(n-25) the subset change
          # now merge it with one additional quarter
          x[0] += 1
          result.push(x)
        end
      end

  end

  # dime case
  if d_fixed != true
    if n >= 10
      # fix the number of quarters in the next recursive step by passing in true
      change_maker(n-10, true).each do |x|
        # merge the results of the recursion with j dimes
        # result.push( [0,1,0,0].zip(x).map{ |a| a.inject(:+) } )

        # we calculated in change_maker(n-10) the subset change
        # now merge it with one additional dime
        x[1] += 1
        result.push(x)
      end
    end
  end

  if n_fixed != true
    if n >= 5
      # fix the number of quarters and dimes in the next recursive step
      change_maker(n-5, true, true).each do |x|
        # merge the results of the recursion with k nickels
        #result.push( [0,0,1,0].zip(x).map{ |a| a.inject(:+) } )


        # we calculated in change_maker(n-5) the subset change
        # now merge it with one additional nickel
        x[2] += 1
        result.push(x)
      end
    end
  end

  # left over amount is all penny
  result.push([0,0,0,n])

end

z=rand(1..100)
#z=98 # 213 combinations
#z=94 # 187 combinations
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
