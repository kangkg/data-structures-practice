class FixedArray
  attr_accessor :array

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index)
    raise 'OutOFBoundsException' if index.to_i >= self.array.length
    self.array[index]
  end

  def set(index, element)
    raise 'OutOFBoundsException' if index.to_i >= self.array.length
    self.array[index] = element
  end
end