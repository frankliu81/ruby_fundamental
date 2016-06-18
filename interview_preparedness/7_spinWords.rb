#spinWords("Hey fellow warriors") returns "Hey wollef sroirraw"

def spinWords(string)
  sentence = string.split(" ")

  sentence.map do |word|
    if word.length > 5
      word.reverse
    else
      word
    end
  end.join(" ")
end

puts spinWords("Hey fellow warriors")
