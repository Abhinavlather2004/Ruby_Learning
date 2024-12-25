# Implement Stack using Queues: Implement a last-in, first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

class MyStack
  def initialize
    @queue1 = [] 
    @queue2 = [] 
  end

  def push(x)
    @queue2.push(x)
    while !@queue1.empty?
      @queue2.push(@queue1.shift)
    end
    @queue1, @queue2 = @queue2, @queue1
  end

  def pop
    @queue1.shift
  end

  def top
    @queue1.first
  end

  def empty
    @queue1.empty?
  end
end

stack = MyStack.new
stack.push(1)
stack.push(2)
puts stack.top    
puts stack.pop    
puts stack.empty  
