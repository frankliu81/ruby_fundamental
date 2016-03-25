def factorial(n)

  if n < 0
    return "unsupported"
  end

  if n == 0
    1
  else
    puts "factorial #{n} = #{n} * factorial #{n-1}"
    n * factorial(n-1)
  end
end
