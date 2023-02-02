require "my_transpose"

describe "#my_transpose" do 
    it "should return a transposed version of the original array" do
        expect(my_transpose([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ])).to eq(
            [[0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]])
    end
    it "should not return an array with the same ordering of elements" do 
        expect(my_transpose([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ])).not_to eq([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ])
    end
    it "should have the same number of elements as the original array" do 
        expect([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ].flatten.length).to eq(my_transpose([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]).flatten.length)
    end
end