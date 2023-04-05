require "./lib/pet"
require "rspec"

RSpec.describe Pet do
  it "exist" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})    

    expect(samson).to be_a(Pet)
  end
  
  it "exist and has attributes" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})    

    expect(samson.name).to eq("Samson")
    expect(samson.type).to eq(:dog)
    expect(samson.age).to eq(3)
  end
  
  it "checks to see if it was fed" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})    

    expect(samson.fed?).to be false
  end
  
  it "can be fed" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})    

    expect(samson.fed?).to be false
    samson.feed
    expect(samson.fed?).to be true
  end
end

# samson.fed?
# # => false

# samson.feed

# samson.fed?
# # => true