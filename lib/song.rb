
require 'pry'

class Song 
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # sets the artist object to belong to the song
  def artist_name=(artist_obj)
    self.artist = Artist.find_or_create_by_name(artist_obj)
    artist.add_song(self)
  end

  # creates a new instance of a song from the file that's passed
  # associates new song instance with the artist from the filename
  def self.new_by_filename(file_name)
    file_info = file_name.split(" - ")
    artist_name = file_info[0]
    song_name = file_info[1]

    new_song = Song.new(song_name)
    new_song.artist_name = artist_name
    new_song
   end

end