class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists     = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

end