# Find the most recurring letter in a given string
# example: hello my name is frank will return
# {"e"=>2, "l"=>2, "m"=>2, "n"=>2, "a"=>2}

print "Please give me a string: "
characters = gets.chomp.split("")
hash_char_count = Hash.new(0)

characters.each do |c|
  hash_char_count[c] += 1 unless c == " "
end

max_count = hash_char_count.values.max

# select creates a new hash based on
# matching condition in the block
puts hash_char_count.select { |k, v|  v == max_count }
