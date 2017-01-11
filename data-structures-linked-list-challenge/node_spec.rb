require_relative 'node'

describe Node do

  let(:test_node) { Node.new("data") }
  let(:other_node) { Node.new("linkage") }
  let(:third_node) { Node.new("testage") }

  it "instantiates a new object of a type Node with a element" do
    expect(test_node).to be_a Node
    expect(test_node.element).not_to eq("frog")
    expect(test_node.element).to eq("data")
  end

  it "links the object to another node object" do
    expect(test_node.insert_after(other_node)).to be(other_node)
  end

  it "removes the linkage" do
    expect(test_node.insert_after(other_node)).to be(other_node)
    test_node.remove_after
    expect(test_node.other_node).to be(nil)
  end

end