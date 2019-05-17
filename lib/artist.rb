require 'rb-readline'
require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.all.find{ |artist| artist.name == artist_name }

    if artist != nil
      artist
    else
      new_artist = Artist.new(artist_name)
      new_artist
    end
  end

  def print_songs
    self.songs.each{ |song| puts song.name }
  end

end
