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

  def find_artist_name_by_id(artist_id)
    artist_name = @artists.find do |artist|
      artist.name if artist.id == artist_id
    end

    artist_name.name
  end

  # def all_artist_photos
  #   @artists
  # end

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

  def find_artists_with_multiple_photos
    artist_photos = Hash.new(0)

    @photographs.each do |photo|
      artist_photos[photo.artist_id] += 1
    end

    artists_with_multiple_photos_objs = []

    artist_photos.each do |key, value|
      if value > 1
        artists_with_multiple_photos_objs << find_artist_by_id(key)
      end
    end

    artists_with_multiple_photos = []

    artists_with_multiple_photos_objs.each do |artist|
      artists_with_multiple_photos << artist.name
    end

    artists_with_multiple_photos
  end
end