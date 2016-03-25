# print 2d array
arr = [[1,2,3],[4,5,6],[7,8,9]]

# method 1 - flatten
# puts arr.flatten.join(" ")

arr.each do |level_one_element|
  level_one_element.each do |level_two_element|
    print "#{level_two_element} "
  end
end
puts
