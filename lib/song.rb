class Song

@@count = 0
@@genres = []
@@artists = []

  attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end

    def self.count
      return @@count
    end

    def self.artists
      return @@artists.uniq
    end

    def self.genres
      return @@genres.uniq
    end

    def self.artist_count
     artist_count = {}
     @@artists.each do |artist|
       if artist_count[artist]
         artist_count[artist] += 1
       else
         artist_count[artist] = 1
       end
     end
     artist_count
   end

   def self.genre_count
    genre_count = {} #creating a hash
    @@genres.each do |genre| #array iterrat.
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
