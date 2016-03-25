require "benchmark"

def sum_recursive(array)
    if array.size == 0
      0
    else
      array[0] + sum_recursive(array[1..-1])
    end
end

def sum_loop(array)
  total = 0
  array.each do |num|
    total += num
  end
  total
end

Benchmark.bm do |x|
  x.report do
    1000_000.times { sum_recursive([1,2,3,4,5])}
  end
end

Benchmark.bm do |x|
  x.report do
    1000_000.times { sum_loop([1,2,3,4,5])}
  end
end
