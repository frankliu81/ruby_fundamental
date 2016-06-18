# 11_sorted_by_first_letter.rb

# Given the input string "Land of the Old Thirteen Massachusetts land! land of Vermont and Connecticut!", you method should return "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut."

# All words that begin with a lower case letter should be at the beginning of the sorted sentnce, and sorted in ascending order.  All words that beging with an upper case letter should come after that, and should be sorted i descending order.  If a word appears twice in the sentence.  It should be returned twice in the sorted sentence.  Any punctuaion must be discarded

# disregard special characters for now

# require "byebug"

# Aside: Spaceship operator
# http://stackoverflow.com/questions/827649/what-is-the-ruby-spaceship-operator/14282353
# Perl was likely the first language to use it. Groovy is another language that supports it. Basically instead of returning 1 (true) or 0 (false) depending on whether the arguments are equal or unequal, the spaceship operator will return 1, 0, or −1 depending on the value of the left argument relative to the right argument.
# a <=> b :=
#   if a < b then return -1
#   if a = b then return  0
#   if a > b then return  1
#   if a and b are not comparable then return nil

def sort(sentence)
  words = sentence.split(" ")
  uppercase_words = []
  lowercase_words = []
  words.each do |word|
    if word[0] == word[0].capitalize
      uppercase_words.push(word)
    else
      lowercase_words.push(word)
    end
  end
  lowercase_words.sort!
  uppercase_words.sort! { |x, y| y <=> x }
  lowercase_words.concat(uppercase_words)
end

print sort("Land of the Old Thirteen Massachusetts land land of Vermont and Connecticut")
