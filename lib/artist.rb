class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name) #helper method
     artist = self.new(name)
     artist.save
     artist
  end

  def self.find_by_name(name) #helper method
    self.all.find {|artist| artist.name = name}
  end

  def self.find_or_create_by_name(name)
      if !self.find_by_name(name)
        self.create_by_name(name)
      else
        self.find_by_name(name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
