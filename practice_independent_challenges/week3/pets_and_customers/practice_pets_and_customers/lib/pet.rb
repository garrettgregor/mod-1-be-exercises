class Pet
  attr_reader :name,
              :type,
              :age
  def initialize(pet_details)
    @name = pet_details[:name]
    @type = pet_details[:type]
    @age  = pet_details[:age]
  end
end