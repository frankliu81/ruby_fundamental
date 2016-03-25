arr = ["hello", "greetings", "hola", "hi"]
hash = {}

arr.each do |word|
  #hash[:"#{word}"] = word.length
  # count is the count of your characters
  hash[word.to_sym] = word.length
end

puts hash
