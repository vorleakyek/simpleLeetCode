# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Float[]}

def is_leaf(node) 
  node && node.left.nil? && node.right.nil? 
end


def children_values(node)
  childrenNodes = []
  
  if node.nil?  
    return childrenNodes
  end
  
  node.left && childrenNodes << node.left.val
  node.right && childrenNodes << node.right.val 
  
  return childrenNodes 
end


def grand_children_nodes (node) 
  
  return [] if node.nil?
  
  values = []
   [node.left, node.right].each_with_object([]) do |chidren, values|
  
      next unless child
      values << child.left.val if child.left 
      values << child.right.val if child.right
    end
  
end


def subtree_size(node) 
  
  return 0 unless node 
  1 + subtree_size(node.left) + subtree_size(node.right)
  
end


def subtree_height(node) 
  
  return 0 if node.nil? 
  
  [subtree_height(node.left), subtree_height(node.right)].max + 1 
  
end
