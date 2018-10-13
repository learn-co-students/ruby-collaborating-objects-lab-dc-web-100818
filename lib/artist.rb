require 'pry'

class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def save 
    self.class.all << self
  end 
  
  def self.find_or_create_by_name(name)
    if self.all.find {|artist_obj| artist_obj.name == name} != nil
      self.all.find {|artist_obj| artist_obj.name == name}
    else 
      artist = Artist.new(name)
    end 
  end 
  
  def print_songs
    self.songs.each {|song_obj| puts song_obj.name}
  end
  
end 

