def fibonacci(n)
  if n < 3
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# 1, 1, 2, 3, 5, 8
puts fibonacci(6)
