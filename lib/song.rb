require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    file_artist = filename.split(' - ')[0]
    file_song = filename.split(' - ')[1]
    song = self.new(file_song)
    artist = Artist.new(file_artist)
    artist.save
    song.artist = artist
    song
  end

end
