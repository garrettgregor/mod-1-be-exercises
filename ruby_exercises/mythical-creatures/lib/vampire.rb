class Vampire
  attr_reader :name, :pet, :thirsty
  
  def initialize(name = "Dracula", pet = "bat", thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def drink
    @thirsty = false
  end
  
end
