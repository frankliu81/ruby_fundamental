# included in ruby, don't need separate gems
require "benchmark"

puts "Benchmarking creating a 100,000,000 strings"
Benchmark.bm do |x|
  x.report do
      100_000_000.times{ "hello" }
  end
end

puts "Benchmarking creating a 100,000,000 strings"
Benchmark.bm do |x|
  x.report do
      100_000_000.times{ :hello }
  end
end
