require "spec_helper"

RSpec.describe Activity do
  describe "#initialize" do
    it "exist" do
      activity = Activity.new("Brunch")

      expect(activity.name).to eq("Brunch")
      expect(activity.participants).to eq({})
    end
  end
  
  describe "#add_participant" do
    it "can add participants" do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)

      expected = {"Maria" => 20}

      expect(activity.participants).to eq(expected)
    end
  end
  
  describe "#total_cost" do
    it "can calculate the total cost from what a participant paid" do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)

      expect(activity.total_cost).to eq(20)
    end
    
    it "can calculate the total cost from what all participants paid" do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)

      expected = {
        "Maria"   => 20,
        "Luther"  => 40
      }

      expect(activity.participants).to eq(expected)
      expect(activity.total_cost).to eq(60)
    end
  end
  
  describe "#split" do
    it "can split the cost amongst all participants" do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)
      
      expect(activity.total_cost).to eq(60)
      expect(activity.split).to eq(30)
    end
  end
end