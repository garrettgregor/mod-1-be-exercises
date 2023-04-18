require "spec_helper"

RSpec.describe Activity do
  describe "#initialize" do
    it "exist" do
      activity = Activity.new("Brunch")

      expect(activity.name).to eq("Brunch")
      expect(activity.participants).to eq({})
    end
  end
end