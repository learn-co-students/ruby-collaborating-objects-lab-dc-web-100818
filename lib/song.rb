require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end 

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    final_name = song_name.split(".")[0]
    
    song = Song.new(file)
    song.name = final_name 
    
    artist_name = file.split(" - ")[0]
    song.artist_name=(artist_name)
    
    song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
  
end 

