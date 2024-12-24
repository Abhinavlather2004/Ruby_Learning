# Group Anagrams: Given an array of strings, group the anagrams together.

def group_anagrams(strs)
  hash_map = {}

  strs.each do |word|
    sorted_word = word.chars.sort.join
    
    # If the sorted word already exists as a key in the hash map, append the word to the group
    if hash_map.key?(sorted_word)
      hash_map[sorted_word] << word
    else
      # If the sorted word does not exist as a key, create a new key-value pair with the word
      hash_map[sorted_word] = [word]
    end
  end

  # Return the values of the hash map, which are the grouped anagrams
  hash_map.values
end

words = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(words)

puts "Input: #{words}"
puts "Grouped Anagrams: #{result.inspect}"
