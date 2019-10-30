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
    @@genres # ?
  end
  
  def self.artists
    @@artists
  end
  
end