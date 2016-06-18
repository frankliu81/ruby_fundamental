# think of a solution that is O(n)
# merge_sort and quick_sort, O(n logn)
# more efficient needs data structure

# let's say you have [-5, 3, 2, 4, 1, 6]
# first loop, inserting into Hash O(1), loop through n, O(n) total
# { 15 -> -5, 7 => 3, 8 => 2, 6 => 4, 9 => 1, 4 = > 6}

# second loop, look through the hash, and see if the current entry matches the key
# if it matches, then we have a pair
require 'byebug'

# sum to ten hash specifies the matching number required
$sum_to_ten_intermediate_hash = {}
$sum_to_ten_pairs_array = []
def find_all_pairs_sum_to_ten(arr)
  for i in (0...arr.count)
    #byebug
    $sum_to_ten_intermediate_hash[(10 - arr[i])] = arr[i]
  end

  for i in (0...arr.count)
    if $sum_to_ten_intermediate_hash[arr[i]]
      $sum_to_ten_pairs_array.push({ arr[i] => $sum_to_ten_intermediate_hash[arr[i]]})
    end
  end

  $sum_to_ten_pairs_array
end

arr = [-5, 3, 2, 4, 1, 6]
p find_all_pairs_sum_to_ten(arr)
