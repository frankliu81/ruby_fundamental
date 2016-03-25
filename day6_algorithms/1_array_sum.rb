def sum(array)
  if array.size == 0
    0
  else
    # array[1..-1] == array[1..array.size-1]
    array[0] + sum(array[1..-1])
  end
end
