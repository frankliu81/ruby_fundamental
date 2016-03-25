require "benchmark"

# use loop
def print_to_50
  time = Benchmark.realtime{1.upto(50) { |i| print "#{i} "}}
  puts
  puts time * 1000
end

# using recursive
def print_to_50_recursive(i=1)
  i == 50 ? i: "#{i} #{print_to_50_recursive(i+1)}"
end

print_to_50

time = Benchmark.realtime{puts print_to_50_recursive}
puts time * 1000
