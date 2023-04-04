class Street
  attr_reader :street_name,
              :buildings
  def initialize(street_name)
    @street_name = street_name
    @buildings = []
  end
  
  def add_building(building)
    @buildings << building.building_name
  end
  
  def number_of_available_apartments
    
  end
end