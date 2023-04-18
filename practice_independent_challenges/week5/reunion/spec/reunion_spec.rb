require "spec_helper"

RSpec.describe Reunion do
  describe "#initialize" do
    it "exist" do
      reunion = Reunion.new("1406 BE")

      expect(reunion.name).to eq("1406 BE")
      expect(reunion.activities).to eq([])
    end
  end
end
