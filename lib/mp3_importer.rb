require 'rb-readline'
require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # @files = Dir["#{self.path}/mp3s/*"].collect{ |file| file.gsub("#{self.path}/mp3s/", "") }
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "")}
  end

  def import
    files.each{ |file| Song.new_by_filename(file) }
  end

end
