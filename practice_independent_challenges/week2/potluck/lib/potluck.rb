class Potluck
  attr_reader :date,
              :dishes
              # :dish_arrays
  def initialize(date)
    @date = date
    @dishes = []
    # @dish_arrays = []
  end

  def add_dish(dish)
    # self.dish_arrays << [dish.name, dish.category]
    # self.dishes << dish.name
    dishes << dish
  end

  def get_all_from_category(category)
    dishes.select do |dish|
      dish.category == category #if this statement is true, select will select the dish and put it into an array, otherwise it won't do anything
    end
  end
  
  # def get_all_from_category(category)
  #   dish_arrays.each do |dish_array|
  #     treanform = dish_array.sort
  #     require 'pry'; binding.pry
  #     sorted = []
  #     sorted << dish_array
  #     sorted.each do |category, name|

  # end
  
  # def make_single_dish_array(dish)
  #   [dish.name, dish.category]
  # end

  # def make_all_dishes_array(dish)
  #   all_dishes = []
  #   return_value = dishes.each do |dish|
  #     dish.make_all_dishes_array(dish)
  #   end
  #   all_dishes << return_value
  #   all_dishes
  # end
end
