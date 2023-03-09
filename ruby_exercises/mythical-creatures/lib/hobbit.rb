class Hobbit
  attr_reader :name, :disposition, :age, :adult, :old, :has_ring, :is_short

  def initialize(name, disposition = "homebody", age = 0, adult = false, old = false, has_ring = false, is_short = true)
    @name = name
    @disposition = disposition
    @age = age
    @adult = adult
    @old = old
    @has_ring = has_ring
    @is_short = is_short
  end

  def celebrate_birthday
    @age = age + 1
  end

  def adult?
    if age >= 33 && age <= 100
      @adult = true
    else
      @adult = false
    end
  end

  def old?
    if age >= 101
      @old = true
    else
      @old = false
    end
  end

  def has_ring?
    if name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def is_short?
    @is_short
  end
  
  
end
