require 'rb-readline'
require 'pry'

# ["./spec/fixtures/mp3s/Real Estate - It's Real - hip-hop.mp3",
#  "./spec/fixtures/mp3s/Real Estate - Green Aisles - country.mp3",
#  "./spec/fixtures/mp3s/Thundercat - For Love I Come - dance.mp3",
#  "./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3"]

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parts = filename.split(' - ')
    song_name = parts[1]
    artist = parts[0]
    new_song = Song.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.songs << new_song
    new_song
  end

end
