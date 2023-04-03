class Apartment
  attr_reader :rooms,
              :rented
  def initialize
    @rooms = []
    @rented = false
  end

  def add_room(room)
    @rooms << room
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def list_rooms_by_name_alphabetically
    rooms.map do |room|
      room.name
    end.sort
  end
end