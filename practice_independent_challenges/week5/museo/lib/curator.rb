class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists     = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(artist_id)
    @artists.find do |artist|
      artist.id == artist_id
    end
  end

  def find_photos_by_artist(artist_name)
    search_id = ""

    @artists.each do |artist|
      if artist_name == artist.name
        search_id = artist.id
      end
    end

    @photographs.find_all do |photo|
      photo.artist_id == search_id
    end

  end
end