require_relative 'fixed_array'

describe FixedArray do
  let(:my_array) { FixedArray.new(3) }

  it "initializes a new FixedArray object" do
    expect(my_array.class).to eq FixedArray
  end

  it "initializes a new object with an array of 3 empty spaces" do
    expect(my_array.array).to eq [nil, nil, nil]
  end

  it "gets the value at an index of the array" do
    expect(my_array.get(0)).to eq nil
  end

  it "raises an error if method tries to get from non-existing index" do
    expect{ my_array.get(3) }.to raise_error('OutOFBoundsException')
  end

  it "sets the value at an index of the array" do
    expect(my_array.set(0, "my element")).to eq "my element"
  end

  it "raises an error if method tries to set at non-existing index" do
    expect{ my_array.set(3, "error error") }.to raise_error('OutOFBoundsException')
  end

end