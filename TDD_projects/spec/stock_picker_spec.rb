require "stock_picker"

describe "#stock_picker" do 
  it "should return an array with two elements" do
    expect(stock_picker([32,13,65,135,76]).length).to eq(2)
  end

  it "should return an array where the buy day comes before the sell day" do
    expect(stock_picker([32,13,65,135,76])[-1]).to be > (stock_picker([32,13,65,135,76])[0])
  end

end