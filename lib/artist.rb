
require 'pry'

class Artist 
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # adds the song to the Artist songs collection
  def add_song(song)
    self.songs << song
    
  end
  
  # adds the Artist instance to the @@all class variable
  def save
    @@all << self
  end

  # outputs the class variable
  def self.all
    @@all
  end

  # finds and retrieves the Artist instance name in the @@all class variable
  def self.find(name)
    self.all.find { |artist| artist.name == name }
  end

  # creates a new instance of Artist
  # adds the Artist instance to the @@all class variable
  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.create(artist_name)
    end
  end


  # ASK QUESTION??????????????????
  # def self.find_or_create_by_name(artist_name)
  #   @@all.each do |artist|
  #     if artist.name == artist_name
  #       artist
  #     else 
  #       new_artist = Artist.new(artist_name)
  #       new_artist.save
  #       new_artist
  #     end
  #   end
  # end

  def print_songs 
    self.songs.each {|song_obj| puts song_obj.name}
  end



end