# complete the method so that it returns an array of all ID's passed in.
# The structure will be similar to the following:

require "byebug"

data = {
  id: 1,
  items: [
    {id: 2},
    {id: 3, items: [
      {id: 4},
      {id: 5}
    ]}
  ]
}

def extract_ids(data)
  arr = []
  arr.push(data[:id])
  if data[:items]
    data[:items].each do |item|
      arr.concat(extract_ids(item))
    end
  end
  arr
end

print extract_ids(data) # should return [1, 2, 3, 4, 5]
puts
print extract_ids({}) # should return []
