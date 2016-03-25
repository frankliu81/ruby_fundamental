# search for "exception classes in ruby" Exceptions.html

begin
  10 / 0
rescue ZeroDivisionError => e
  puts "I caught the zero division error #{e.backtrace}"
rescue NoMemoryError => e
  puts "I caught the no memory error"
rescue => e
  puts "I caught and unknown error #{e.message}"
end

puts "Bye"
