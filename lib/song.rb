require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@songs = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@songs << self
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    artists = []
    @@artists.each do |artist|
      artists << artist unless artists.include?(artist)
    end
    artists
  end

  def self.genres
    genres = []
    @@genres.each do |genre|
      genres << genre unless genres.include?(genre)
    end
    genres
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      unless genre_count.key?(genre)
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      unless artist_count.key?(artist)
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end

end
