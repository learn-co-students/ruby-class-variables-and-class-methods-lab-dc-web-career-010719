require 'pry'
class Song
 
 @@count = 0
 @@artists = []
 @@genres = []
 @@genre_count = {}
 @@artist_count = {}
 
 attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
  
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    
    @@count += 1
  end 

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
  
@@genres.each {|genre|
    if @@genre_count.keys.include?(genre)
        @@genre_count[genre] += 1 
    else @@genre_count[genre] = 1
    end}
  @@genre_count

end


def self.artist_count
@@artists.each {|artist|
    if @@artist_count.keys.include?(artist)
        @@artist_count[artist] += 1 
    else @@artist_count[artist] = 1
    end}
  @@artist_count

end 
end