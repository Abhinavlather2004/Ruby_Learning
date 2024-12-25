# Binary Tree Level Order Traversal: Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).


class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def level_order(root)
  return [] if root.nil? 

  result = []
  queue = [root] 
  while !queue.empty?
    level_values = [] # To store values of nodes at the current level
    level_size = queue.size # Number of nodes at the current level

    level_size.times do
      node = queue.shift # Pop the front of the queue
      level_values << node.val # Add the node's value to the current level's list

      # Add the left and right children of the node to the queue
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end

    # Add the current level's values to the result
    result << level_values
  end

  result
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.left = TreeNode.new(6)
root.right.right = TreeNode.new(7)

result = level_order(root)
puts result.inspect