# Write a Ruby class to implement a singly linked list. Include methods to:
# Insert a node at the head.
# Insert a node at the tail.
# Display the linked list.

# Delete a Node:
# Write a function to delete a node by its value from a linked list.

# Search for a Value:

# Implement a method to search for a value in the linked list and return its position (0-based index).

# Find the Length:

# Write a method to calculate the number of nodes in the linked list.

# Reverse a Linked List:

# Implement a function to reverse the nodes in a linked list.

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil 
  end
  
end

class LinkedList 
  def initialize 
    @head = nil
  end

  def insert_at_head(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def insert_at_tail(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      return
    end
    current = @head
    while current.next_node
      current = current.next_node
    end
    current.next_node = new_node
  end

  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next_node
    end
    puts "nil"
  end

  def delete(value)
    return if @head.nil?
    if @head.value == value
      @head = @head.next_node
      return
    end

    current = @head
    while current.next_node
      if current.next_node.value == value
        current.next_node = current.next_node.next_node
        return
      end
      current = current.next_node
    end
    puts "Not Found"
  end

  def search(value)
    current = @head
    index = 0
    while current
      return index if current.value == value
      current = current.next_node
      index+=1
    end
    return -1  
  end

  def no_Of_nodes
    current = @head
    count = 0
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def reverse
    previous = nil
    current = @head
    while current
      next_node = current.next_node  
      current.next_node = previous   
      previous = current             
      current = next_node            
    end
    @head = previous  
  end


end
list=LinkedList.new 

list.insert_at_head(12 )

list.insert_at_head(1)

list.insert_at_tail(2)
list.insert_at_tail(3)
list.display  
list.delete(20)
list.display 
puts list.search(2)
puts list.no_Of_nodes
list.reverse
list.display