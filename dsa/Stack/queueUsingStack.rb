# Implement Queue using Stacks: Implement a first-in, first-out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

class MyQueue
  def initialize
    @input_stack = []
    @output_stack = []
  end

  def push(x)
    @input_stack.push(x)
  end

  def pop
    transfer_input_to_output if @output_stack.empty?
    @output_stack.pop
  end

  def peek
    transfer_input_to_output if @output_stack.empty?
    @output_stack.last
  end

  def empty
    @output_stack.empty? && @input_stack.empty?
  end

  private 

  def transfer_input_to_output
    while !@input_stack.empty?
      @output_stack.push(@input_stack.pop)
    end
  end
end

queue = MyQueue.new
queue.push(1)
queue.push(2)
queue.push(3)

puts queue.peek
puts queue.pop
puts queue.pop
puts queue.empty
puts queue.pop

