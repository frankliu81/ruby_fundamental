# capitalize each name in the array, push to new array

# names = ["frank", "kallol", "dave", "preston", "aston"]
#
# names.each do |name|
#   name.capitalize!
# end
#
# print names
# puts

names = ["anne", "frank", "quan", "denis", "michael"]
cap_names = []

names.each do |name|
  puts name.capitalize
  cap_names.push(name.capitalize)
end

print names
print cap_names
