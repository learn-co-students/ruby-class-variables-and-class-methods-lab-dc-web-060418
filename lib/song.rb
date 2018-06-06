require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  @@count = 0
  @@genres = []
  @@artists = []

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
    @@genres.each do |music_genre|
      if genre_hash[music_genre] == nil
        genre_hash[music_genre] = 1
      else
        genre_hash[music_genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |music_artist|
      if artist_hash[music_artist] == nil
        artist_hash[music_artist] = 1
      else
        artist_hash[music_artist] += 1
      end
    end
    artist_hash
  end

end
