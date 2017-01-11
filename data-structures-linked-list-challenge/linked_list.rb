require_relative 'node'

class LinkedList

  def initialize
    @first = nil
    @last = nil
  end

  def insert_first(element)
    if @first.nil?
      @first = Node.new(element)
    else
      @first = Node.new(element).insert_after(@first)
    end
  end

  def remove_first()
    if @first.nil?
      return nil
    else
      @first = @first.other_node
    end
  end

  def insert_last(element)
    @last = Node.new(element)
  end

  def remove_last
    @last = nil
  end

  # release-2:
  # LinkedList#get(index): Get the element in the list at index
  # LinkedList#set(index, element): Set the element in the list at index
  # LinkedList#insert(index, element): Insert the value element in the List at position index
  # LinkedList#size: Return the size of the list

  def get(index)
    counter = 0
    until index > counter
      break if
    end
  end

end
