class MP3Importer
#parse all filenames in spec/
#fixtures folder; send to Song

attr_accessor :path

def initialize(path)
  @path = path
end

def files                 #mp3 files
  Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
end

def import
  #iterate thru filenames
  #send to Song.new_by_filename
  self.files.each {|file| Song.new_by_filename(file)}
end

end
