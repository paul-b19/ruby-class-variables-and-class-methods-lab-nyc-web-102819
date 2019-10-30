require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  attr_reader :artists, :genres, :count
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    hash = {}
    self.genres.each do |i|
      hash[i] = @@genres.select{|i| i}.length
    end
    hash
    binding.pry
  end
  
  def self.artist_count
    
  end
  
end