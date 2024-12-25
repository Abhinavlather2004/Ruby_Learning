# Evaluate Reverse Polish Notation: Evaluate the value of an arithmetic expression in Reverse Polish Notation.

def eval_rvn(tokens)
  stack = []
  tokens.each do |token|
    case token
    when '+'
      b = stack.pop
      a = stack.pop
      stack.push(a + b)
    when '-'
      b = stack.pop
      a = stack.pop
      stack.push(a - b)
    when '*'
      b = stack.pop
      a = stack.pop
      stack.push(a * b)
    when '/'
      b = stack.pop
      a = stack.pop
      stack.push((a.to_f/b).to_i)
    else
      stack.push(token.to_i)
    end
  end
  stack.pop
end

tokens = ["2", "1", "+", "3", "*"]
puts eval_rvn(tokens)

  





