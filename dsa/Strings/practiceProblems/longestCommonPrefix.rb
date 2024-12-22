# Write a method to find the longest common prefix among an array of strings.

def longest_Common_Prefix(strs)
  if strs.empty?
    return ""
  end
  
  longest_common_prefix = ""
  # Take first string in array as reference for comparison
  reference_str = strs[0]

  for i in 0...reference_str.length
    current_char = reference_str[i]
    
    strs.each do |str|
      # If current string is shorter than the reference string
      if str.length <= i
        return longest_common_prefix
      end
      if str[i] != current_char
        return longest_common_prefix
      end
    end
    longest_common_prefix += current_char
  end
  return longest_common_prefix
end


strs = ["flower", "flow", "flight", "flowerpot"]
result = longest_Common_Prefix(strs)
puts result  
