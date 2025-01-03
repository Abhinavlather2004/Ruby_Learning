# Find the Lowest Common Ancestor in a Binary Tree
# ● Problem: Given a binary tree and two nodes, find the lowest common ancestor of the two
# nodes.
# ● Solution Approach:
# ○ If either node is the root, return the root.
# ○ Recursively search for the nodes in the left and right subtrees.
# ○ If both nodes are found in the left subtree, the LCA is in the left subtree.
# ○ If both nodes are found in the right subtree, the LCA is in the right subtree.
# ○ If one node is found in the left subtree and the other in the right subtree, the LCA is
# the current node.

class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

class BinaryTree
  
  def self.lowest_common_ancestor(root, p, q)
    
    return root if root.nil? || root == p || root == q
    
    # Recurse on the left and right subtrees
    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)
    
    # If both left and right are not nil, this root is the LCA
    return root if left && right
    
    # If either left or right is nil, return the non-nil value (the ancestor)
    left || right
  end
end


root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)
root.left.right.left = TreeNode.new(7)
root.left.right.right = TreeNode.new(4)


p = root.left  # Node 5
q = root.right # Node 1
lca = BinaryTree.lowest_common_ancestor(root, p, q)
puts "The LCA of 5 and 1 is: #{lca.val}"  

p = root.left  # Node 5
q = root.left.right.right  # Node 4
lca = BinaryTree.lowest_common_ancestor(root, p, q)
puts "The LCA of 5 and 4 is: #{lca.val}"  

