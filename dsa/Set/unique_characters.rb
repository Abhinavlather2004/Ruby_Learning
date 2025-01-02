# Unique Characters in a String
# ● Problem: Given a string, determine if all characters in the string are unique.
# ● Solution Approach:
# ○ Create a set to store encountered characters.
# ○ Iterate through the string.
# ○ For each character:
# ■ If the character is already present in the set, return false (duplicates found).
# ■ Otherwise, add the character to the set.
# ○ If the loop completes without finding duplicates, return true.

require 'set'

def has_unique_characters?(str)
  seen_chars = Set.new  
  
  str.each_char do |char|
    if seen_chars.include?(char)  
      return false  
    else
      seen_chars.add(char)  
    end
  end
  
  true 
end
