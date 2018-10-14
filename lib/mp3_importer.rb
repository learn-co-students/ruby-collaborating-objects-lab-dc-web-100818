require "pry"

class MP3Importer
  attr_reader :path
  attr_accessor :songs

  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    #binding.pry
    Dir.foreach(path) { |file| file.end_with?('.mp3') ? self.songs << file : nil }
    self.songs
  end

  def import
    self.files
    self.songs.each do |song|
      Song.new_by_filename(song)
    end
  end
end
