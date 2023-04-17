require "spec_helper"

RSpec.describe Artist do
  describe "#initialize" do
    it "initializes with attributes" do
      attributes = {
        id: "2",
        name: "Ansel Adams",
        born: "1902",
        died: "1984",
        country: "United States"
      }
      artist = Artist.new(attributes)
      expect(artist.id).to eq("2")
      expect(artist.name).to eq("Ansel Adams")
      expect(artist.born).to eq("1902")
      expect(artist.died).to eq("1984")
      expect(artist.country).to eq("United States")
    end
  end
  
  describe "#age_at_deat" do
    it "calculates the age at death" do
      attributes = {
        id: "2",
        name: "Ansel Adams",
        born: "1902",
        died: "1984",
        country: "United States"
      }
      artist = Artist.new(attributes)
      expect(artist.born).to eq("1902")
      expect(artist.died).to eq("1984")
      expect(artist.age_at_death).to eq(82)
    end
  end
end