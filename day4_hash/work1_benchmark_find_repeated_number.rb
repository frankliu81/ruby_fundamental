# given an array between 1 and 1_000_000_000
# one integer is in the array twice
# determine which one
require "benchmark"

arr = (1..1_000_000).to_a
# arr[5] = 6 is replaced by 50
arr[5] = 50;

# ruby array shuffle
# http://stackoverflow.com/questions/1816378/how-to-randomly-sort-scramble-an-array-in-ruby
arr.shuffle!

# print arr

# solution 1: using hash
# hash key => number, value => count of occurences, default value of count is 0
# good articles on how Ruby Hash works
# https://blog.engineyard.com/2013/hash-lookup-in-ruby-why-is-it-so-fast
# https://launchschool.com/blog/how-the-hash-works-in-ruby
puts "Solution 1: Benchmarking using Hash to find repeat"
Benchmark.bm do |x|
  x.report do

    hash = Hash.new(0)
    arr.each do |elem|
      # puts hash[index]
      # we have seen this element in the hash if hash[elem] == 1
      if hash[elem] == 1
        puts "#{elem} is the repeated element."
        break
      else
        hash[elem] = 1
      end
    end

  end
end
puts

# solution 2 - Using an extra array:
puts "Solution 2: Benchmarking using Array to find repeat"
Benchmark.bm do |x|
  x.report do

    tracking_array = Array.new(1_000_000, 0)
    arr.each_with_index do |elem, index|
        if tracking_array[elem-1] == 0
          tracking_array[elem-1] = 1
        else
          puts "#{elem} is the repeated element."
          break
        end
    end

  end
end
puts


# solution 3:
# you can pass a block to Array.new
# http://stackoverflow.com/questions/7014052/ruby-multidimensional-array
puts "Solution 3: Benchmarking using 2d Array to find repeat"
Benchmark.bm do |x|
  x.report do

    two_level_array = Array.new(1000) { Array.new(1000, 0) }
    #print two_level_array

    arr.each do |elem|
      bucket =  (elem-1) / 1000
      position_in_bucket = (elem-1) % 1000
      if two_level_array[bucket][position_in_bucket] == 0
        two_level_array[bucket][position_in_bucket] = 1
      else
        puts "#{elem} is the repeated element."
        break
      end
    end

  end
end
puts

# solution 4: not using hash, save on memory, do a linear search
# in place with each element, O(n^2), it never finishes
# arr.each_with_index do |elem, i|
#   for j in (i+1...arr.length)
#     if elem == arr[j]
#       puts "#{elem} is the repeated element."
#       break
#     end
#   end
# end

# Solution 5 from Sam
  puts "Solution 5: Benchmarking with hash"
  arr = (1..1_000_000).to_a
  #puts arr.count
  random_value = rand(1_000_000)
  random_value_2 = rand(1_000_000)

  arr.insert(random_value, random_value_2)
  #puts arr.count

  hash = Hash.new(0)

time = Benchmark.realtime {

  arr.each do |e|
      hash[e] += 1
  end

  value = nil
  # time = Benchmark.realtime {hash.each { |k,v| break if hash[k] == 2}}
}
puts "the time it takes to search through the hash (only) is #{time} ms";
