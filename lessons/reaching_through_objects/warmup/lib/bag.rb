class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    count == 0
    ## Same as...
    # if count == 0
    #   true
    # else
    #   false
    # end
  end

  def count
    @candies.length
  end

  def add_candy(candy)
    @candies << candy
    # @count += 1
  end

  def contains?(candy)
    @candies.any? do |name|
      name.type == candy
    end
  end

end