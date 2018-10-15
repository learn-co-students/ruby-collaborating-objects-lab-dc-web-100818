class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path =  path
  end

  def files
    Dir.entries(self.path).select do |file|
      file.end_with?(".mp3")
   end    
  end

  def import
    files.each do |song|
      Song.new_by_filename
    end
  end

end
