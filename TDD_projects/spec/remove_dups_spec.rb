require "remove_dups"

describe "#remove_dups" do
    it "should return a new array with duplicate elements removed, in the order they appeared" do
        expect(remove_dups([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
    it "should not call built in uniq method" do 
        expect_any_instance_of(Array).not_to receive(:uniq)
    end
    array = [1, 2, 1, 3, 3]
    array_2 = remove_dups(array)

    it "should return a new array" do 
        expect(array).not_to be(array_2)
    end
end