# Given a hash:
hash = {:a => "123", :b => "345", :c => "678", :d => "910"}
# Write a code that generates an array that combines the keys and values:
# so the resulting array should be:
# ["a123", "b345", "c678", "d910"]

arr = []
hash.each do |k, v|
  arr.push(k.to_s + v)
end

print arr
puts
