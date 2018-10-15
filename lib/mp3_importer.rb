class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    @path = path
  end

  def files
    @filenames = []
    Dir.entries(path).each do |file|
      if file.include?(".mp3")
        @filenames << file
      end
    end
    filenames
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
