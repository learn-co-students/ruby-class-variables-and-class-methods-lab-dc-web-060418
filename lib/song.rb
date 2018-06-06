require "pry"

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
    @@artists << @artist
    @@genres << @genre
  end


  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |x|
      if genre_count_hash.has_key?(x)
        genre_count_hash[x] += 1
      else
        genre_count_hash[x] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |x|
      if artist_count_hash.has_key?(x)
        artist_count_hash[x] += 1
      else
        artist_count_hash[x] = 1
      end
    end
    artist_count_hash
  end
  
end
