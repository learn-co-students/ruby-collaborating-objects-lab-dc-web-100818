
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
     @@all << self
   end

   def self.find_or_create_by_name(name)
     find_name = @@all.find do |person|
     person.name == name
        if
          find_name
        else
          self.new(name)
     end
    end
   end

   def print_songs
     @songs.each do |song|
      puts song.name
    end
   end
end
