require "./lib/customer"
require "./lib/pet"
require "rspec"

RSpec.describe Customer do
  it "existand has attributes" do
    joel = Customer.new("Joel", 2)    
    
    expect(joel).to be_a(Customer)
    expect(joel.name).to eq("Joel")
    expect(joel.id).to eq(2)
    expect(joel.pets).to eq([])
  end
end

# samson = Pet.new({name: "Samson", type: :dog, age: 3})
# # => #<Pet:0x00007ff8dc1f86a0...>

# lucy = Pet.new({name: "Lucy", type: :cat, age: 12})    
# # => #<Pet:0x00007ff8dc93e108...>

# joel.adopt(samson)

# joel.adopt(lucy)    

# joel.pets
# # => [#<Pet:0x00007ff8dc1f86a0...>, #<Pet:0x00007ff8dc93e108...>]

# joel.outstanding_balance
# # => 0

# joel.charge(15)

# joel.charge(7)    

# joel.outstanding_balance
# # => 22