class Dragon
  attr_reader :name, :color, :rider, :hungry, :meals

  def initialize(name, color, rider, hungry = true, meals = 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry 
    @meals = meals
  end
  
  def eat
    @meals = meals + 1 
  end

  def hungry?
    if meals <= 2
      @hungry = true
    else
      @hungry = false
    end
  end
  

end
