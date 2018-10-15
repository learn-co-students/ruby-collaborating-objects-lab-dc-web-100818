class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
     song = self.new(filename.split(' - ')[1])
     artist = Artist.new(filename.split(' - ')[0])
     artist.save
     song.artist = artist
     song
  end
end
