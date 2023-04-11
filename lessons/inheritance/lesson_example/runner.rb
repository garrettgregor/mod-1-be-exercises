require './lib/ceo'
require './lib/manager'
require './lib/intern'
require './lib/employee'

ali = Ceo.new(15, 20, "Ali", 34567)
ben = Manager.new(10, "Ben", 23456)
chris = Intern.new(5, "Chris", 12345)

require "pry"; binding.pry

# Ali, Ben, and Chris all need names and IDs in the system. Where can they get those?