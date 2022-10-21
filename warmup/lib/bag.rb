class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end

  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_arg)
    @candies.map do |candy|
      if candy.type == candy_arg
        return true
      else
        return false
      end
    end
  end
end
