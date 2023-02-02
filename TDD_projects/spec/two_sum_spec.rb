require "two_sum"

describe "Array#two_sum" do
  it "should return all pairs of positions where the elements at those positions sum to 0" do
    expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
  end
  it "will return an empty array if no pairs are found" do
    expect([0,1,2,3,4].two_sum).to eq([])
  end
end