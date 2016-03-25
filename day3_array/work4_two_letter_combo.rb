# Given a string such as "abcd". Generate an array that gives
# every 2-letter combination that are adjacent so your code will
# generate:
#["ab", "bc", "cd"]

string = "abcd"
arr = []

for i in (0...string.length-1)
  arr.push(string[i] + string[i+1])
end

print arr
puts
