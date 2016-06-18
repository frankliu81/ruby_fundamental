# [1,[2,[3,[5,nil]]]] => [[[[5, nil], 3], 2], 1]

def reverseList(list)
  if list[1] == nil
    return list
  end
  result = []
  result.push(reverseList(list[1]))
  result.push(list[0])
end

print reverseList([1, [2, [3, [5, nil]]]])
