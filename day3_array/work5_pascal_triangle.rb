require 'byebug'
#       1
#      1  1
#    1  2  1
#   1  3 3  1
#  1 4  6  4 1
# 1 5 10 10 5 1

# row 1 has 1 element
# row 6 has 6 elements

def number_length(number)
  length = (number ==0) ? 1 : Math.log10(number).to_i + 1;
end

def pascal_triangle(n)
  puts

  if n == 1
    puts "1"
    return
  elsif n == 2
    puts " 1 "
    puts "1 1"
    return
  end

  rows = []
  rows.push([1])
  rows.push([1,1])
  last_row=[1,1]
  # from row 3 to row n
  for i in 3..n do
    row = []
    # the first entry and last entry is 1
    row[0] = 1
    row[i-1] = 1

    # in between first and last
    for j in 1..i-2 do
      # the jth value is last_row's j-1th + jth value
      row[j] = last_row[j-1] + last_row[j]
    end
    last_row = row
    # print row
    rows.push(row)
  end

  #print rows
  # Attempt 1: print the rows with just a space in between
  # skew as the number of digits grow
  # rows.each_with_index do |row, index|
  #  puts " "*(rows.length-index) + row.join(" ")
  # end


  # Attempt 2: pad the space according to the length difference
  # between the row below and the current row ad we are building the rows_string

  # initialize empty row strings into an array
  rows_string = []
  for i in 0..n-1 do
    rows_string.push("")
  end

  # i is the ith element across
  # j is the jth row down
  # starting from the last row, going across
  # backup
  # for i in 0..n-1 do
  #   (n-1).downto(0).each do |j|
  #     rows_string[j] = rows_string[j] + " " + rows[j][i].to_s
  #   end
  # end

  for i in 0..n-1 do
    (n-1).downto(0).each do |j|

        num_space = 1
        # for the second last row to the first row, adjust
        # the space according to the space difference between the
        # row below (ie. j+1) and the current row
        if j < (n-1)
          #puts ">>>>>>>"
          #puts rows_string[j]
          #puts rows_string[j+1]
          #puts ">>>>>>>"
          num_space = rows_string[j+1].length - rows_string[j].length
          #puts num_space
        end

        rows_string[j] = rows_string[j] + " "*num_space + rows[j][i].to_s

    end
  end

  puts rows_string
end

# puts number_length(212)
puts "Enter number of rows: "
n = gets.chomp.to_i
pascal_triangle(n)
