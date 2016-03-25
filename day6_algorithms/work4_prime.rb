# Write a method that takes a number n and returns whether n is
# prime or not. A prime number is divisible by only 1 and itself.

# from Jane
def prime(n)

  if (n == 1)
    return false
  end

  (2..n/2).each do |x|
    if n % x == 0
      return false
    end
  end

  true
end

# from Ian
def prime2(n, divisor=2)
    # cut the search by 1
    if (n==1)
      return false
    end

    if divisor > n / 2
      return true
    end

    if n % divisor == 0
      return false
    else
      return prime2(n, divisor+1)
    end
end

# x = 100
# puts "prime(#{x}): #{prime(x)}"

# solution 1
print "Solution 1 primes: "
(1..100).each do |x|
  if prime(x)
    print "#{x} "
  end
end
puts

# solution 2
print "Solution 2 primes: "
(1..100).each do |x|
  if prime2(x)
    print "#{x} "
  end
end
puts
