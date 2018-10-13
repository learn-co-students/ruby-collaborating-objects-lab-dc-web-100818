class Artist
  #responsible for creating
  #artist(if artist doesn't exist)
  #or finding instance of that artist
  #(if artist exits)
attr_accessor :name, :songs

@@all = []

def self.all
 @@all
end

def initialize(name)
  @name = name
  @songs = []
end

def save #helper method
  self.class.all << self
end

def self.create_by_name(name) #helper method
   artist = self.new(name)
   artist.save
   artist
end

 def self.find_by_name(name) #helper method
   self.all.find { |artist| artist.name = name}
 end

def self.find_or_create_by_name(name)
   if !self.find_by_name(name)
     self.create_by_name(name)
   else
     self.find_by_name(name)
   end
 end

 def add_song(song)
   self.songs << song
 end

def print_songs
  self.songs.each { |song| puts song.name }
end

end
