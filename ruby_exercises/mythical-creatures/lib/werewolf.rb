class Werewolf
  attr_reader :name,
              :location,
              :human,
              :hungry
  def initialize(name, location)
    @name = name
    @location = location
    @human = 2
    @wolf = 1
    @hungry = false
    @humans_eaten = 0
  end

  def human?
    return_value = @human.even?
    return_value
  end

  def wolf?
    return_value = @wolf.even?
    return_value
  end

  def hungry?
    if self.human? == true && @humans_eaten == 0
      @hungry = false
    elsif self.human? == false && @humans_eaten == 0 
      @hungry = true
    elsif self.human? == false && @humans_eaten > 0
      @hungry = false
    else
      "#{self.name} is neither human nor werewolf"
    end
  end

  def change!
    @human += 1
    @wolf += 1
  end

  def consume(victim)
    if self.hungry? == true
      victim.kill
      @humans_eaten += 1
      @hungry = false
    # elsif self.hungry? == false
    #   victim.kill
    end
  end
end

class Victim
  attr_accessor :status
  def initialize
    @status = :alive
  end

  def kill
    @status = :dead
  end
end