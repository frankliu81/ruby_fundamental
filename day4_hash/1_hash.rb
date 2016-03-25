# my_hash = Hash.new
# if you access a key that doesn't exists, default value is 0
# my_hash = Hash.new(0)
# my_hash = {}

my_hash={"first_name"=>"Frank", "last_name"=>"Liu","email"=>"fwliu@hotmail.com"}
puts my_hash

# => hash rocket
# for strings in object, you can do : in ruby 2.2.2
# when you puts :, it becomes a symbol, so you need brands.delete(:"VolksWagon")
brands = {"VolksWagon" => "Jetta", "Tesla" => "Model S", "GMC" => "Silverado"}
brands.delete("VolksWagon")
puts brands

# Find a method in the doc that returns an array of the keys
puts brands.keys
puts.values
