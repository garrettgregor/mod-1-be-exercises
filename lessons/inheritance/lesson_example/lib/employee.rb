# This would enable the manager to inherit from employees parent
# class Employee < Parent
class Employee
  attr_reader :name, :id

  def initialize(name, id)
    @name = name
    @id = id
  end

  def total_compensation
    @base_salary + @bonus
  end

  def benefits
    [:sick_leave]
  end

end