require_relative 'exceptions'

class NoSuchElementError < StandardError
end

class OutOfBoundsError < StandardError
end

class LinkedList

  def initialize
    @first = nil
    @last = nil
  end

  def first
    if @first
      @first.element
    else
      raise NoSuchElementError
    end
  end

  def last
    if @last
      @last.element
    else
      raise NoSuchElementError
    end
  end

  def length
    current_node = @first
    length = 0
    until current_node.nil? 
      length += 1
      current_node = current_node.next
    end
    length
  end

  # def add_to(element)
  #   new_first = Node.new(element)
  #   new_first.next = @first
  #   @first = new_first
  # end

  def add(element)
    new_last = Node.new(element)
    if @last.nil?
      @last = new_last
      @first = @last
    else
      @last.next = new_last
      @last = new_last
    end
    new_last.element
  end

  def get(index)
    desired_node = @first
    counter = 1
    until counter > index
      raise NoSuchElementError if desired_node.nil? || desired_node.next.nil?
      desired_node = desired_node.next
      counter += 1
    end
    desired_node.element
  end

  def set(index, element)
    if length > index
      desired_node = @first
      counter = 0
      until counter >= index
        desired_node = desired_node.next
        counter += 1
      end
      desired_node.element = element
    else
      raise NoSuchElementError
    end
  end

  def insert(index, element)
    if index == 0 # insert at beginning
      old_node = @first
      @first = Node.new(element)
      @first.next = old_node
    elsif index >= length # if index out of bounds.
      raise OutOfBoundsError
    else
      counter = 0
      previous_node = @first
      until counter >= (index - 1) # to grab the original node.
        previous_node = previous_node.next
        counter += 1
      end
      old_node = previous_node.next #the original node
      previous_node.next = Node.new(element) #insert the new node, onto the previous node
      previous_node.next.next = old_node # set the inserted node's .next to the old node.
    end
  end

end
