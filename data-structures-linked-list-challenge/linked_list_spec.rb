# LinkedList#new: Instantiate a new linked list
# LinkedList#insert_first(element): Insert an element at the front of the list
# LinkedList#remove_first: Remove the element at the front of the list or nil if absent
# LinkedList#insert_last(element): Insert an element at the back of the list
# LinkedList#remove_last: Remove the element at the back of the list or nil if absent

require_relative 'linked_list'

describe LinkedList do
  let(:linked_list) { LinkedList.new() }
  let(:test_node) { Node.new("data") }
  let(:other_node) { Node.new("linkage") }
  let(:third_node) { Node.new("testage") }

  it "instantiates a new LinkedList object" do
    expect(linked_list).to be_a LinkedList
  end

  it "instantiates a new element (node object)" do
    linked_list.insert_first("first!!")
    expect(linked_list.first).to be "first!!"
  end

  ## too lazy to finish rest of basic tests >.>

end