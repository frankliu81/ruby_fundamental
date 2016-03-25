# capitalize each word in the sentence
print "Please type a sentence: "

sentence = gets.chomp

words = sentence.split

words.each do |word|
  word.capitalize!
  #print "#{word} "
end

put words.join(" ")
