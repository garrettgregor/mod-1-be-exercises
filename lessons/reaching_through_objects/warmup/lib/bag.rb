class Bag
  attr_reader :count,
              :candies
  def initialize
    @count = 0
    @candies = []
  end

  def empty?
    if @count == 0
      true
    else
      false
    end
  end

  def add_candy(candy)
    @candies << candy
    @count += 1
  end

  def contains?(candy)
    @candies.any? do |name|
      name.type == candy
    end
  end

end