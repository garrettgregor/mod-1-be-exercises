class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name         = name
    @participants = Hash.new(0)
  end

  def add_participant(name, paid)
    @participants[name] += paid
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.length
  end

  def owed
    each_owed = Hash.new(0)
    @participants.each do |participant, paid|
      owed = split - paid
      each_owed[participant] = owed
    end
    each_owed
  end
end