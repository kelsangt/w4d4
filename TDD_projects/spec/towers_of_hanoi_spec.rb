require "towers_of_hanoi"

describe "Towers of Hanoi" do
  subject(:towers_of_hanoi) { TowersOfHanoi.new }

  context "initialize" do 
    it "should create an array" do
      expect(towers_of_hanoi.stacks).to be_kind_of(Array)
    end

    it "should contain 3 stacks within the array" do
      expect(towers_of_hanoi.stacks.length).to eq(3)
    end
    it "should have the first subarray contain all of the discs (4)" do 
      expect(towers_of_hanoi.stacks[0].length).to eq(4)
    end
  end
  # it "raises an error when the first subarray does not contain all of the discs" do 
  #   expect { TowersOfHanoi.new }.to raise_error(RunTimeError)
  # end
  
  context "game logic" do 
    describe "move" do
      it "should properly move discs to each desired subarray" do 
        expect(towers_of_hanoi.move(0, 2)).to eq([[2, 3, 4], [], [1]])
      end
    end
  end

end