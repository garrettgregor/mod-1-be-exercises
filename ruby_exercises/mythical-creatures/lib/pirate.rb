class Pirate
  attr_reader :name, :job, :heinous_acts, :cursed, :booty

  def initialize(name, job = "Scallywag", heinous_acts = 0, cursed = false, booty = 0)
    @name = name
    @job = job
    @heinous_acts = heinous_acts
    @cursed = cursed
    @booty = booty

  end

  def commit_heinous_act
    @heinous_acts = heinous_acts + 1
  end


  def cursed?
    if @heinous_acts >= 3
      @cursed = true
    else
      @cursed = false
    end
  end

  def rob_ship
    @booty = booty + 100
  end

end
