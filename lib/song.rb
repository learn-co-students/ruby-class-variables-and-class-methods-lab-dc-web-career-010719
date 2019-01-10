require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		#///// instance variables /////
		@name = name
		@artist = artist
		@genre = genre
		# ///// class variables //////
		@@count += 1
		@@artists << artist
		@@genres << self.genre
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
		genre_hash = {}
		@@genres.each do |x|
			genre_hash[x] ||= 0
			genre_hash[x] = genre_hash[x] + 1
		end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}
		@@artists.each do |y|
			artist_hash[y] ||= 0
			artist_hash[y] = artist_hash[y] + 1
		end
		artist_hash
	end
end