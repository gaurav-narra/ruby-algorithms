require("#{__dir__}/binary_search_tree")

module BinaryTree
  class LevelOrderTraversal

    def traverse(node)
      return result.strip if node.nil?
      set_temp_node(node)
      append_string(node.value)
      enqueue_children(node)
      traverse(dequeue)
    end

    private

    def temp_node
      @temp_node
    end

    def enqueue_children(node)
      @queue ||= []
      @queue << node.left if node.left
      @queue << node.right if node.right
    end

    def dequeue
      return @queue.shift()
    end

    def set_temp_node(node)
      @temp_node = node
    end

    def result
      @result
    end
    def append_string(value)
      @result ||= ""
      @result += "#{value} "
    end
  end
end
