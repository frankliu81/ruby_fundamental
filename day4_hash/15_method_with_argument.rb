def my_method(a, b)
  puts "A is #{a}"
  puts "first name is #{b[:first_name]}"
  puts "last name is #{b[:last_name]}"
end



my_method(10, {first_name: "Tam", last_name: "Kbeili"})
my_method 10, {first_name: "Tam", last_name: "Kbeili"}
# you can ignore round bracket if last argument is hash
my_method 10, first_name: "Tam", last_name: "Kbeili"
