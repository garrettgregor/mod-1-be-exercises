class Wizard
  attr_reader :name, :bearded, :rested, :spells_cast

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    return false if @spells_cast >= 3
    rested
   end
  
  def cast
    @spells_cast += 1
    "MAGIC MISSILE!"
  end

end
