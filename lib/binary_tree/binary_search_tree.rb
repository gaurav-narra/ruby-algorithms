require "#{__dir__}/binary_tree"

module BinaryTree
  class BinarySearchTree

    def insert_array(arr)
      arr.each do |value|
        insert(value)
      end
    end

    def insert(value)
      new_node = BinaryTree::Node.new(value, nil, nil)
      if root_node.nil?
        return set_root_node(new_node)
      end
      return insert_inplace(new_node, root_node)
    end

    def root_node
      @root_node
    end

    private

    def set_root_node(node)
      @root_node = node
    end

    def insert_inplace(new_node, tree_node)
      if(tree_node.value >= new_node.value)
        if(tree_node.left.nil?)
          return tree_node.left = new_node
        else
          return insert_inplace(new_node, tree_node.left)
        end
      else
        if(tree_node.right.nil?)
          return tree_node.right = new_node
        else
          return insert_inplace(new_node, tree_node.right)
        end
      end
    end

  end
end