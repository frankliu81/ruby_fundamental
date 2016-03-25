# 8-bit mountain climbing.
#

# You've been playing a variant of a certain video game since 1982, and you're starting to get a little bored with it.  In this game, you try to climb a triangular mountain of size 'N' -- starting from any square at the bottom (indicated by an 'O'), you can move diagonally upwards to the right or left (if there is another 'O' in that direction) until you reach the summit.  For example, the board for N=5 looks like this:
#
#       O
#
#      O O
#
#     O O O
#
#    O O O O
#
#   O O O O O
#
#
# and here is one particularly epic climb to the top (1-5 indicate the path taken):
#
#
#
#       5
#
#      O 4
#
#     O 3 O
#
#    O O 2 O
#
#   O O 1 O O
#
#
#
#
#
# a.  After so many years, you've started to wonder if there is still new ground to cover.  To help answer this question, you want to count the number of distinct ways to climb a mountain of size N.
#
#
#
# Write a method that takes an N and returns the exact number of distinct climbs of a mountain of size N.  You may assume N up to size 50.
#
#
#
# b.  To make things a bit more interesting, you sometimes play a variant with "traps": squares marked with an "X" that you are not allowed to traverse.  For example, here is a mountain for N=4 with two traps:
#
#
#
#      O
#
#     O O
#
#    O X O
#
#   O O X O
#
#
#
# Write a function that takes a mountain as input, as a List of Strings, and returns the number of distinct climbs that do not pass through a trap square.  For example, the input for the previous example would look like this:
#
#
#
#   ["   O   ",
#
#    "  O O  ",
#
#    " O X O ",
#
#    "O O X O"]
#
#

# climb helper iterates the starting position
# at the bottom row, then calls the recusrive climb_helper
def climb(mountain)
  # take the last row
  routes = []

  if mountain.size == 1
    # subsitute the o with ^ to mark path
    # mountain[0] is a string, so we use [] to put it back into an array again
    puts "hello"
    return routes.push( [ mountain[0].gsub('O', '^') ] )
  end

  # mountain[-1] is the bottom row, for a mountain of 4
  # it is "O O O O"
  mountain[-1].split("").each_with_index do |char, index|
    if char == 'O'
      # call climb helper on the smaller mountain, with starting position
      #if (index - 1 > 0)

        # if the left upper char is a 'O', climb the rest of the mountain
        # with that as the starting position
        if mountain[-2][index-1] == 'O'
          puts "climb: call helper on left #{index-1}"
          # mountain[0..-2] is the mountain with the last row trimmed off
          routes_subset = climb_helper(mountain[0..-2], index-1)
          # initialize starting position with all blanks
          starting_position = " "*mountain[-1].length
          # mark the starting position
          starting_position[index] = '^'
          # puts starting_position

          # for each subset route, append the starting position
          routes_subset.each do |route_in_subset|
           routes.push( route_in_subset.concat([starting_position]) )
          end

        end
      #end

      #if (index + 1 < mountain[-1].length )

        if mountain[-2][index+1] == 'O'
          # puts "climb: calling helper on right #{index+1}"
          routes_subset = climb_helper(mountain[0..-2], index+1)
          # initialize starting position with all blanks
          starting_position = " "*mountain[-1].length
          # mark the starting position
          starting_position[index] = '^'
          # puts starting_position

          # for each subset route, append the starting position
          routes_subset.each do |route_in_subset|
           routes.push( route_in_subset.concat([starting_position]) )
          end

        end

      #end

    end
  end

  routes
end

def climb_helper(mountain, pos)

  routes = []
  # base case, mountain of 1
  # distinct climb
  if mountain.size == 1
    # subsitute the o with ^ to mark path
    # mountain[0] is a string, so we use [] to put it back into an array again
    #puts "climb_helper base case"
    routes.push( [ mountain[0].gsub('O', '^') ] )
    return routes
  end

  # call climb helper on the smaller mountain, with starting position
  # if (pos - 1 > 0 )
    # if the left upper char is a 'O'
    if mountain[-2][pos-1] == 'O'
      #puts "climb helper: calling helper on left: #{pos-1}"
      routes_subset = climb_helper(mountain[0..-2], pos-1)

      # initialize starting position with all blanks
      starting_position = " "*mountain[-1].length
      # mark the starting position
      starting_position[pos] = '^'
      # puts starting_position

      routes_subset.each do |route_in_subset|
        routes.push( route_in_subset.concat([starting_position]) )
      end
      # puts "routes left begin routes_subset.count"
      # print routes_subset.count
      # puts "routes left end"
      # puts
    end
  # end

  # if (pos + 1 < mountain[-1].length )

    if mountain[-2][pos+1] == 'O'
      #puts "climb helper: calling helper on right #{pos+1}"
      routes_subset = climb_helper(mountain[0..-2], pos+1)
      # initialize starting position with all blanks
      starting_position = " "*mountain[-1].length
      # mark the starting position
      starting_position[pos] = '^'
      # puts "starting_position:#{starting_position}"
      #puts "route_subset right begin"
      #puts routes_subset
      #puts "route_subset right end"
      # puts "routes right begin routes_subset.count"
      # print routes_subset.count
      # puts "routes right end"
      # puts
      routes_subset.each do |route_in_subset|
        routes.push( route_in_subset.concat([starting_position]) )
      end
    end
  # end

  return routes
end


def print_mountain(mountain)
  mountain.each do |x|
    puts x
  end
end

def print_routes(routes)

  total_route_num = 0

  # puts routes
  if routes == []
    puts "No distinct routes"
    return
  end

  routes.each_with_index do |route, index|
    puts "Route #{index+1}: "
    route.each do |x|
      puts x
      total_route_num = index + 1
    end
    puts
  end

  puts "Total route number: #{total_route_num}"

end

def build_mountain(level)
  mountain = []

  # number of characters per level
  # "O O O O" = 7
  chars_per_level = 2 * level - 1
  # from 0 to level-1
  for curr_level in 0...level do
    level_string = " "*chars_per_level

    # for each character
    # for curr_char in 0...chars_per_level do
    # end

    # level 0 has one 'O'
    # level 1 has two '0'
    num_of_o = curr_level+1

    # level 0, O start position is 4 - 0 - 1 = 3
    # level 1, O start position is 4 - 1 - 1 = 2
    o_start_position =  level - curr_level - 1

    for i in 0...num_of_o do
      level_string[o_start_position + i*2] = 'O'
    end

    mountain << level_string
  end

  mountain
end

mountain_a =   ["   O   ",
                "  O O  ",
                " O O O ",
                "O O O O"]


mountain_b =   ["   O   ",
                "  O O  ",
                " O X O ",
                "O O X O"]

mountain_c =   ["   O   "]

mountain_d =   [" O ",
                "O O"]

mountain_e = build_mountain(5)

#print_mountain mountain_a
#puts

#print_mountain mountain_b
#puts

#
# routes_c = climb(mountain_c)
# puts "Mountain: "
# print_mountain mountain_c
# puts
# puts "Distinct Routes: "
# print_routes routes_c
# puts


# routes_d = climb(mountain_d)
# puts "Mountain: "
# print_mountain mountain_d
# puts
# puts "Distinct Routes: "
# print_routes routes_d
# puts


# routes_a = climb(mountain_a)
# puts "Mountain: "
# print_mountain mountain_a
# puts
# puts "Distinct Routes: "
# print_routes routes_a
# puts

routes_e = climb(mountain_e)
puts "Mountain: "
print_mountain mountain_e
puts
puts "Distinct Routes: "
print_routes routes_e
puts

routes_b = climb(mountain_b)
puts "Mountain: "
print_mountain mountain_b
puts
puts "Distinct Routes: "
print_routes routes_b
puts
