class Medusa
  attr_reader :name,
              :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.make_stoned
    statues << victim
    process_old_victims
  end

  def process_old_victims
    return false if statues.count <= 3
    old_victim = statues.shift
    old_victim.make_unstoned
  end
end

class Person
  attr_reader :name,
              :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def make_stoned
    @stoned = true
  end
  
  def make_unstoned
    @stoned = false
  end
end