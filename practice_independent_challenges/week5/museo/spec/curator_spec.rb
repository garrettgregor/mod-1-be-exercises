require "spec_helper"

RSpec.describe Curator do
  describe "#initialize" do
    it "intializes with an empty collection of photographs" do
      curator = Curator.new

      expect(curator.photographs).to eq([])
    end
  end

  describe "#add_photograph" do
    it "can add a photo to the collection of photographs" do
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

      # expect(curator.artists).to eq([])

      # artist_1 = Artist.new({
      #     id: "1",
      #     name: "Henri Cartier-Bresson",
      #     born: "1908",
      #     died: "2004",
      #     country: "France"
      # })

      # artist_2 = Artist.new({
      #     id: "2",
      #     name: "Ansel Adams",
      #     born: "1902",
      #     died: "1984",
      #     country: "United States"
      # })

      # curator.add_artist(artist_1)

      # curator.add_artist(artist_2)

      # expect(curator.artists).to eq([artist_1, artist_2])

      # expect(curator.find_artist_by_id("1")).to eq(artist_1)
    end
  end

  describe "#artists" do
    it "has a list of artists" do
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

      expect(curator.artists).to eq([])
    end

    it "has a list of artists in the collection of photographs" do
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

      expect(curator.artists).to eq([])

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
    it "can find artists in collection by id" do
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

      expect(curator.artists).to eq([])

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

      expect(curator.find_artist_by_id("1")).to eq(artist_1)
    end
  end
  describe "#find_artist_by_id" do
    it "can find artists in collection by id" do
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

      expect(curator.artists).to eq([])

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

      expect(curator.find_artist_by_id("1")).to eq(artist_1)
    end
  end

  describe "#find_photos_by_artist" do
    it "can find artist's photos" do
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

      artist_2 = Artist.new({
          id: "2",
          name: "Ansel Adams",
          born: "1902",
          died: "1984",
          country: "United States"
      })

      curator.add_artist(artist_1)
      curator.add_artist(artist_2)

      expect(curator.find_photos_by_artist("Henri Cartier-Bresson")).to eq([photo_1])
      expect(curator.find_photos_by_artist("Ansel Adams")).to eq([photo_2])
    end
  end
end