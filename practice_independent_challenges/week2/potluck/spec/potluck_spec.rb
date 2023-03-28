require "rspec"
require "./lib/dish"
require "./lib/potluck"

RSpec.describe Potluck do
  it "exists" do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_an_instance_of(Potluck)
  end
  
  it "contains a date and no dishes" do
    potluck = Potluck.new("7-13-18")
    
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end
  
  it "contains a date and no dishes" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq(["Couscous Salad", "Cocktail Meatballs"])
  end
  
  it "verifies how many dishes there are" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq(["Couscous Salad", "Cocktail Meatballs"])
    expect(potluck.dishes.length).to eq(2)
  end
end