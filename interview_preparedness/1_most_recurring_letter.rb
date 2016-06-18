require 'byebug'

arg1 = ARGV[0]

# return the largest key
# http://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash
def largest_hash_value(hash)
  hash.max_by{|k,v| v}
end

def most_recurring_letter(string)
  letters_hash= {}
  letters = string.split("")
  letters.each do |letter|
    if letters_hash.key?(letter)
      letters_hash[letter] += 1
    else
      letters_hash[letter] = 1
    end
  end
  largest_hash_value(letters_hash)
end

if arg1
  string = arg1
else
  string = "hello world"
end

max_key_value = most_recurring_letter(string)
p "Most recurring letter of: " + string + " - " + max_key_value[0] + " count - " +  max_key_value[1].to_s
