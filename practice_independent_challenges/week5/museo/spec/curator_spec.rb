require "spec_helper"

RSpec.describe Curator do
  describe "#initialize" do
    it "initializes with no photographs" do
      curator = Curator.new    
      
      expect(curator.photographs).to eq([])
    end
  end
  
  describe "#add_photograph" do
    it "can add photographs to the curators collection" do
      curator = Curator.new
      
      expect(curator.photographs).to eq([])
      
      photo_1 = Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
      })        
    
      photo_2 = Photograph.new({
          id: "2",      
          name: "Moonrise, Hernandez",      
          artist_id: "2",      
          year: "1941"      
      })        
      
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
        
      expect(curator.photographs).to eq([photo_1, photo_2])
    end
  end
  
  describe "#artists" do
    it "can get a list of the artists in the collection" do
      curator = Curator.new
      
      expect(curator.artists).to eq([])
      
      # photo_1 = Photograph.new({
      #   id: "1",      
      #   name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      #   artist_id: "1",      
      #   year: "1954"      
      # })        
    
      # photo_2 = Photograph.new({
      #     id: "2",      
      #     name: "Moonrise, Hernandez",      
      #     artist_id: "2",      
      #     year: "1941"      
      # })        
      
      # curator.add_photograph(photo_1)
      # curator.add_photograph(photo_2)
        
      # expect(curator.photographs).to eq([photo_1, photo_2])
    end
  end
end