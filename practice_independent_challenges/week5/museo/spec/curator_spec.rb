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
    end
    
    it "can add artists to the collection" do
      curator = Curator.new
      
      expect(curator.artists).to eq([])
      
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

      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })        
    
      artist_2 = Artist.new({
        id: "2",      
        name: "Ansel Adams",      
        born: "1902",      
        died: "1984",      
        country: "United States"      
      })        
    
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      
      expect(curator.artists).to eq([artist_1, artist_2])
    end
  end
  
  describe "#find_artist_by_id" do
    it "can find artists by their id number" do
      curator = Curator.new
      
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

      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })        
      # => #<Artist:0x00007fb3d8b4ed60...>
    
      artist_2 = Artist.new({
        id: "2",      
        name: "Ansel Adams",      
        born: "1902",      
        died: "1984",      
        country: "United States"      
      })        
      # => #<Artist:0x00007fb3d90bb4b0...>
    
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      
      expect(curator.find_artist_by_id("1")).to eq(artist_1)
      # => #<Artist:0x00007fb3d8b4ed60...>
    end
  end
end