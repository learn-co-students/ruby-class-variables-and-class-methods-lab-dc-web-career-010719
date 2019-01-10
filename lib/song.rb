class Song

  attr_reader :name, :artist, :genre
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    if !@@songs.include?(name)
      @@all << self
    end
    @@artists << artist
    @@genres << genre
    @@songs << name

  end

  def self.all
    @@all
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

  def self.songs
    @@songs
  end

  def self.genre_count
    @@genres.uniq.map do |g|
      @@genre_count[g] = 0
      @@all.uniq.each do |song|
        if song.genre == g
          @@genre_count[g] += 1
        end
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.uniq.map do |a|
      @@artist_count[a] = 0
      @@all.uniq.each do |song|
        if song.artist == a
          @@artist_count[a] += 1
        end
      end
    end
    @@artist_count
  end

end
