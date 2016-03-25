def by_five(num)
  # modulus zero, then it is false in the conditional,
  # but it means divisble by five, we return true
  (num % 5) == 0
end

def by_five_2(num)
  # modulus zero, then it is false in the conditional,
  # but it means divisble by five, we return true
  (num % 5) == 0? true : false
  # this doesn't work, everything in ruby is true, including 0,
  # except for nil and false
  # (num % 5) ? false : true
end

puts by_five(15)
puts by_five(9)

puts by_five_2(15)
puts by_five_2(9)
