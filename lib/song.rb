class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []
  @@artist_count = {}

  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1

    @@artists << artist
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
    
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    return @@genre_count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.artist_count
    return @@artist_count
  end
end