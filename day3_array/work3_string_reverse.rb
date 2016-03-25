# reverse string without using reverse

#greeting = "hello"
#puts greeting.reverse # olleh

# Solution1: new string
# characters = greeting.split("")
# new_greeting = []
#
# (greeting.length-1).downto(0) do |i|
#   new_greeting.push(greeting[i])
# end
#
# puts new_greeting.join("")

#greeting[0], greeting[4] = greeting[4], greeting[0]
#puts greeting

#puts greeting.length
#length = greeting.length
#for i in (0..length/2)

greeting = "hello"
# # Solution2: ruby swap
# for i in (0..greeting.length/2)
#   greeting[i], greeting[greeting.length-1-i] =
#   greeting[greeting.length-1-i], greeting[i]
# end
# puts greeting

# swap 2 numbers
# a = 1
# b = 2
# a, b = b, a
# puts a
# puts b
i = 0
while i < greeting.length/2
  temp = greeting[i]
  greeting[i] = greeting[greeting.length-1-i]
  greeting[greeting.length-1-i] = temp
  i += 1
end
puts greeting
