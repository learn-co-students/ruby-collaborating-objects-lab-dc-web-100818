class MP3Importer 
  attr_accessor :path 
  
  def initialize(file_path)
    @path = file_path
  end 
  
  def files 
    song_files = []
    Dir.entries("spec/fixtures/mp3s").each do |file|
      if file.include?(".mp3")
        song_files << file 
      end 
    end 
    song_files
  end 
  
  def import 
    files.each do |song|
      Song.new_by_filename(song)
    end 
  end 
  
end 