require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = Dir.entries(@path)
    filenames.slice!(0, 2)
    filenames
  end

  def import
    files.each {|filename| Song.new_by_filename}
  end

end
