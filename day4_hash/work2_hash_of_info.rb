# ask user for personal info, store in hash, and print the result, capitlize the inputs

personal_info = {}
print "Please give me your first name: "
personal_info[:first_name] = gets.chomp.capitalize
print "Please give me your last name: "
personal_info[:last_name] = gets.chomp.capitalize
print "Please give me your city of birth: "
#personal_info[:city_of_birth] = gets.chomp
# & - to proc, pass method name as symbol
personal_info[:city_of_birth] = gets.chomp.split.map(&:capitalize).join(" ");
print "Please give me your age: "
personal_info[:age] = gets.chomp

# personal_info.keys.each do |key|
#   puts "Your #{key.to_s.gsub(/_/, " ")} is #{personal_info[key]}"
# end

personal_info.each do |key, value|
    puts "Your #{key} is #{value}"
end
