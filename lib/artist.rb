require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    #binding.pry
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    found = self.all.find { |artist| artist.name == name }
    found ? found : Artist.new(name)
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

  def self.all
    @@all
  end
end
