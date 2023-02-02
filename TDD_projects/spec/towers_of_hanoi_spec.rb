require "towers_of_hanoi"

describe "#initialize" do
  subject(:towers_of_hanoi) { TowersOfHanoi.new }
  it "should create an array" do
    expect(towers_of_hanoi.stacks).to be_kind_of(Array)
  end

  it "should contain 3 stacks within the array" do
    expect(towers_of_hanoi.stacks.length).to eq(3)
  end

end