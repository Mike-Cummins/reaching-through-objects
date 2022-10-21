class TrickOrTreater
  attr_reader :costume, :bag
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end
  def dressed_up_as
    @costume.style
  end
  def has_candy?
    @bag.count > 0
  end
  def candy_count
    @bag.count
  end
  def eat
    bag.remove
  end
end
