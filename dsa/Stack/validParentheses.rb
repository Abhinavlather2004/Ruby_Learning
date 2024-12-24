# Valid Parentheses: Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

def is_valid(s)
  stack = []

  s.each_char do |char|
    case char
    when '(', '{', '['
      stack.push(char)  
    when ')'
      return false if stack.empty? || stack.pop != '('  
    when '}'
      return false if stack.empty? || stack.pop != '{'  
    when ']'
      return false if stack.empty? || stack.pop != '['  
    end
  end
  # If the stack is empty, all brackets are matched correctly
  stack.empty?
end

s = "([{}])"
puts is_valid(s)  

s2 = "([)]"
puts is_valid(s2) 
