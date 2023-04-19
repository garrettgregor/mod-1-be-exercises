class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name       = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.sum do |activity|
      activity.total_cost
    end
  end

  def balance
    breakdown = Hash.new(0)
    @activities.each do |activity|
      activity.owed.each do |name, amount_owed|
        breakdown[name] += amount_owed
      end
    end
    breakdown
  end
end