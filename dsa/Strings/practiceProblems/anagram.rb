# Group Anagrams
# Given an array of strings, group anagrams together.


def group_anagrams(strs)
  # Hash map
  anagrams = {}

  strs.each do |str|
    # Sort string & use it as key
    sorted_str = str.chars.sort.join
    
    # Group anagrams by adding the original string to the corresponding key
    if anagrams[sorted_str]
      anagrams[sorted_str] << str
    else
      anagrams[sorted_str] = [str]
    end
  end
  anagrams.values
end

strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(strs)
puts result.inspect