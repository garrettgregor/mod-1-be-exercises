class Wizard

  attr_reader :name
  attr_accessor :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
    # if @bearded == true
    #   true
    # else
    #   false
    # end
  end

  def incantation(x)
    "sudo #{x}"
  end

end
