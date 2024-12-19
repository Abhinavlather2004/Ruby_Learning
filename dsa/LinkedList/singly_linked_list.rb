# Write a Ruby class to implement a singly linked list. Include methods to:
# Insert a node at the head.
# Insert a node at the tail.
# Display the linked list.
# Delete a Node:

class Node
  attr_accessor :data, :next
  def initialize(data) 
    @data = data
    @next = nil
  end
end


class SinglyLinkedList
  def initialize
    @head = nil
  end

  def insertAtHead(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  def insertAtTail(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end
  end

  def display_list
    current = @head
    if current.nil?
      puts "The list is empty"
    else
      while current
        print "#{current.data} -> "
        current = current.next
      end
      puts "nil"
    end
  end
  def delete_node(data)
    return if @head.nil?

    if @head.data == data
      @head = @head.next 
      return
    end
    
    current = @head
    while current.next != nil && current.next.data != data
      current = current.next
    end
    if current.next != nil
      current.next = current.next.next
    end
  end
end

list = SinglyLinkedList.new
list.insertAtHead(2)
list.insertAtTail(3)
list.insertAtTail(4)
list.insertAtTail(5)
list.insertAtTail(6)
list.insertAtHead(1)
list.display_list
list.delete_node(1)
list.display_list
