class Pet
  attr_reader :name,
              :type,
              :age,
              :eaten
  def initialize(pet_details)
    @name   = pet_details[:name]
    @type   = pet_details[:type]
    @age    = pet_details[:age]
    @eaten  = false
  end

  def fed?
    @eaten
  end
end