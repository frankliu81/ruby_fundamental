# exponent

def exponent(n, e)

  if e < 0
    return 1.0 / exponent(n, -e)
  end

  if e == 0
    1
  else
    n * exponent(n, e-1)
  end
end

# 3^5 = 243
puts exponent(3,5)

# 3^(5-) = 1/243 = 0.00412 
puts exponent(3,-5)
