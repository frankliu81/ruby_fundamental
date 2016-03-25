num = 1

('a'..'z').each do |i|
  num.times do
    print "#{i} "
  end
  puts
  num += 1
end

# solution 2
# ("a".."z").each_with_index do |element, index|
#   puts "#{element} "*(index+1)
# end
