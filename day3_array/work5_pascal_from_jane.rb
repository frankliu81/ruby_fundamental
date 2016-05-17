# Write a code that generates a Pascal Triangle with N number of row taken from the user.

def calculate_next_line(current_line)
  next_line = []
  next_line_length = current_line.count + 1

  next_line_length.times do |i|
    el = current_line[i].to_i
    if i == 0 || i == (next_line_length)
      next_line << el
    else
      next_line << (el + current_line[i - 1].to_i)
    end
  end

  return next_line
end

def add_to_triangle(array, number)
  array.push("  #{number}")
end

puts "Enter a number:"
n = gets.to_i
triangle = []

i = 1
spaces = n
line = 0
num = 1

n.times do |index|
  triangle[line] = []

  spaces.times do
    triangle[line] << " "
  end

  if index == 0
    add_to_triangle(triangle[line], 1)
  elsif index == 1
    2.times {add_to_triangle(triangle[line], 1)}
  else
    prev_line = triangle[line-1]
    numbers_array = prev_line.reject{|el| el == " "}.map{|el| el.to_i}

    calculate_next_line(numbers_array).each do |number|
      add_to_triangle(triangle[line], number)
    end
  end

  line += 1
  spaces -= 1
  i += 1
end

triangle.each do |line|
  puts line.join(" ")
end
