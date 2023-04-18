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
    it "exist" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      # => #<Activity:0x007fe4ca1d9438 ...>

      reunion.add_activity(activity_1)

      expect(activity_1).to be_an Activity
      expect(reunion.activities).to eq([activity_1])
    end
  end
end
