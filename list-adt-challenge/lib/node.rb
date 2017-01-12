class Node
  attr_accessor :element, :next

  def initialize(element)
    @element = element
    @next = nil
  end

  def remove_after()
    @next = nil
  end

end
