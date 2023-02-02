
class TowersOfHanoi
  attr_reader :stacks, :move
  def initialize
    @stacks = [[1, 2, 3, 4], [], []]
  end
  def move(start, ending)
    @stacks[ending] << @stacks[start].shift
    return @stacks
  end
end