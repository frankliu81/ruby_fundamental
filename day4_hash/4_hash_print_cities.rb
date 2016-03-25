	my_hash = {
  "BC" => ["Vancouver", "Richmond"],
  "AB" => ["Edmonton", "Calgary"]
  }

# my_hash.each do |province, cities|
#   print "#{province}: "
#   cities.each_with_index do |city, index|
# 		if index == cities.count - 1
# 			print "#{city}"
# 		else
# 			print "#{city}, "
# 		end
# 	end
#   puts
# end

my_hash.each do |province, cities|
	puts "#{province}: #{cities.sort.join(", ")}"
end
