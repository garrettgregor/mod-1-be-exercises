require "spec_helper"

RSpec.describe Reunion do
  describe "#initialize" do
    it "exist with a name and activities" do
      reunion = Reunion.new("1406 BE")

      expect(reunion.name).to eq("1406 BE")
      expect(reunion.activities).to eq([])
    end
  end
  
  describe "#add_activity" do
    it "adds an activity to the reunion" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")

      reunion.add_activity(activity_1)

      expect(activity_1).to be_an Activity
      expect(reunion.activities).to eq([activity_1])
    end
  end
  
  describe "#total_cost" do
    it "tell us the total cost of the reunion" do
      reunion = Reunion.new("1406 BE")
      activity1 = Activity.new("Brunch")
      activity1.add_participant("Maria", 20)
      activity1.add_participant("Luther", 40)
      reunion.add_activity(activity1)
      
      expect(reunion.total_cost).to eq(60)
      
      activity2 = Activity.new("Lunch")
      activity2.add_participant("Maria", 20)
      activity2.add_participant("Luther", 40)
      reunion.add_activity(activity2)
      
      expect(reunion.total_cost).to eq(120)
    end
  end
end
