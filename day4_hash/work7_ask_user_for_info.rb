# Ask the user for the following information: first name, last name and age
# Then ask them for cities they've visited (they can keep entering until they type "done").
# Store all the entered data in a hash and then loop through the hash and display results

# ask user for personal info, store in hash, and print the result, capitlize the inputs

personal_info = {}
print "Please give me your first name: "
personal_info["first_name"] = gets.chomp.capitalize
print "Please give me your last name: "
personal_info["last_name"] = gets.chomp.capitalize
print "Please give me your age: "
personal_info["age"] = gets.chomp

cities_visited = []

city = ""
while true do
  print "Please enter a city you visited (or 'done'): "
  # & - to proc, pass method name as symbol
  city = gets.chomp.split.map(&:capitalize).join(" ");
  if city.downcase == "done"
    break
  end
  cities_visited << city
end

personal_info["cities you visited"] = cities_visited

personal_info.each do |key, value|
  if value.is_a?(Array)
    print "The #{key} are #{value.join(", ")}."
  else
    puts "Your #{key} is #{value}"
  end
end

puts
