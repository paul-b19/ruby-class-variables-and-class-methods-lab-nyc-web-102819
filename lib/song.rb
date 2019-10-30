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
    ar = self.genres 
    hash = {}
    ar.each do |i|
      hash[i] = 0;
      hash[i] = @@genres.select{|i| i}.length
    end
  end
  
  def self.artist_count
    
  end
  
end