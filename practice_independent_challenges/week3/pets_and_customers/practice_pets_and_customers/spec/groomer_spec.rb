require "./lib/customer"
require "./lib/pet"
require "./lib/groomer"
require "rspec"

RSpec.describe Groomer do
  it "exist and has a name" do
    clean_paws = Groomer.new("Clean Paws")

    expect(clean_paws).to be_a(Groomer)
  end
  
  it "can have customers" do
    clean_paws = Groomer.new("Clean Paws")
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12}) 
    joel.adopt(samson)
    joel.adopt(lucy)

    clean_paws.add_customer(joel)

    expect(clean_paws.customers).to eq([joel])
  end
  
  it "can have multiple customers" do
    clean_paws = Groomer.new("Clean Paws")
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12}) 
    joel.adopt(samson)
    joel.adopt(lucy)
    
    sally = Customer.new("Sally", 3)
    lexi = Pet.new({name: "Lexi", type: :dog, age: 1})
    laci = Pet.new({name: "Laci", type: :dog, age: 1}) 
    sally.adopt(lexi)
    sally.adopt(laci)

    clean_paws.add_customer(sally)

    expect(clean_paws.customers).to eq([joel, sally])
  end
end