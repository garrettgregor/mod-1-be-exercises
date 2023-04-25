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


  describe "#find_artists_with_multiple_photos" do
    it "can find artists that have more than one" do
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

      photo_3 = Photograph.new({
        id: "3",
        name: "Identical Twins, Roselle, New Jersey",
        artist_id: "3",
        year: "1962"
      })

      photo_4 = Photograph.new({
        id: "4",
        name: "Child with Toy Hand Grenade in Central Park",
        artist_id: "3",
        year: "1962"
      })

      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)

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

      artist_3 = Artist.new({
          id: "3",
          name: "Diane Arbus",
          born: "1923",
          died: "1971",
          country: "United States"
      })

      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      curator.add_artist(artist_3)

      expect(curator.find_photos_by_artist("Henri Cartier-Bresson")).to eq([photo_1])
      expect(curator.find_photos_by_artist("Ansel Adams")).to eq([photo_2])
      expect(curator.find_photos_by_artist("Diane Arbus")).to eq([photo_3, photo_4])
      expect(curator.find_artists_with_multiple_photos).to eq(["Diane Arbus"])
    end
  end
end