class Potluck
  attr_reader :date,
              :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    self.dishes << dish.name
  end

end
