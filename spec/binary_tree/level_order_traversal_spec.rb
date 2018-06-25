require 'rspec'
require 'binary_tree/level_order_traversal'

describe BinaryTree::LevelOrderTraversal do

  it 'should print level order traversal' do
    bst = BinaryTree::BinarySearchTree.new()
    bst.insert_array([41, 4, 2, 6, 1, 15, 2, 8])
    lot = BinaryTree::LevelOrderTraversal.new
    expect(lot.traverse(bst.root_node)).to eql("41 4 2 6 1 15 2 8")
  end

end