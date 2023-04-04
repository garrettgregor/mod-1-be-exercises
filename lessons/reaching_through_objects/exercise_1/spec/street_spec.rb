require "rspec"
require "./lib/building"
require "./lib/street"
require "./lib/apartment"

RSpec.describe Street do
  it "exists" do
    adlington = Street.new("Adlington Road")

    expect(adlington).to be_an_instance_of(Street)
    expect(adlington.street_name).to eq("Adlington Road")
  end
  
  it "can add buildings" do
    adlington = Street.new("Adlington Road")
    zebra = Building.new("123", "Zebra Apartments")
    expect(zebra).to be_a(Building)
    expect(zebra.building_number).to eq("123")
    expect(zebra.building_name).to eq("Zebra Apartments")
    
    bldg = Building.new("623", "Savills Apartment Building")
    adlington.add_building(bldg)
    adlington.add_building(zebra)

    expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  end
  
  it "can add buildings" do
    adlington = Street.new("Adlington Road")
    bldg = Building.new("623", "Savills Apartment Building")
    zebra = Building.new("123", "Zebra Apartments")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)
    require 'pry'; binding.pry
    
    expect(zebra).to be_a(Building)
    expect(zebra.building_number).to eq("123")
    expect(zebra.building_name).to eq("Zebra Apartments")
    
    adlington.add_building(bldg)
    adlington.add_building(zebra)

    expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  end
end