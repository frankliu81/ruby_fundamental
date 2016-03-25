# capitalize world with map
print "Please type a sentence: "

words = gets.chomp.split

# solution1
# words.map do |word|
#   word.capitalize!
# end
words.map! {|word| word.capitalize}

puts words.join(" ")

#solution2
puts gets.chomp.split.map {|word| word.capitalize}.join(" ")
# if you are only calling one method
# puts gets.chomp.split.map(&:capitalize).join(" ")
# map(&:capialize).join(" ")
# & - to proc, pass method name as symbol
