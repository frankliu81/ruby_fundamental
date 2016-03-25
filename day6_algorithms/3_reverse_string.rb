# reversing a string with recursion

def reverse_string(string)

  if string == ""
    return ""
  end

  if string.length == 1
    string
  else
    # string[string.length-1] + reverse_string(string[0..string.length-2])
    # chop removes the last character
    string[-1] + reverse_string(string.chop)
  end

end


def reverse_string(word)
  # terniary operator
  (word.size < 1) ? word: word[-1] + reverse_string(word[0..-2])

end

puts reverse_string("hello world")
puts reverse_string("g")
puts reverse_string("")
word = "hello world"
puts word[0..-1]
