# sort and capitalize the book name

arr = []
input = ""

# my solution
while true
  print "Enter a book name, or exit: "
  input = gets.chomp

  if input.downcase == "exit"
    break
  end

  arr.push(input)
end

arr.sort.map do |book|
  words_in_book_capitalized = book.split.map {|word| word.capitalize}
  book = words_in_book_capitalized.join(" ")
  puts book
end

# sorty array by length
#print arr.sort_by!(&:length)
puts

# Greg's answer - entreprenerdz
# arr_book = []
# while true
#   puts"Gimme a book name or type 'exit' when done."
#   book = gets.chomp.split.map!(&:capitalize).join(" ")
#    book == "Exit" ? break :  arr_book << book
# end
# puts arr_book.sort!
