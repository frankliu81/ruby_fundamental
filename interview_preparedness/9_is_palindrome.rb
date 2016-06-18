def isPalindrome(str)
  ibeg = 0
  iend = str.length = 1
  while ibeg < iend
    if str[ibeg] != str[iend]
      return false
    end
    ibeg += 1
    iend -= 1
  end
  true
end

puts isPalindrome("a")
puts isPalindrome("abcd")
puts isPalindrome("abcba")
