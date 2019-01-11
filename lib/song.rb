
require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  #binding.pry

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    out_hash = {}
    @@genres.uniq.each do |genre|
      out_hash[genre] = @@genres.count(genre)
    end
    out_hash
  end

  def self.artist_count
    out_hash = {}
    @@artists.uniq.each do |artist|
      out_hash[artist] = @@artists.count(artist)
    end
    out_hash
  end



end

# binding.pry
# 0
