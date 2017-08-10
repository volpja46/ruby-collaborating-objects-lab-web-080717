class MP3Importer
  attr_reader :path

    def initialize(path)
      @path = path
      # /spec/fixtures/mp3s" path
    end
#
# Let's start with the MP3 Importer. Build an MP3Importer class that parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique. To do this, you'll need two methods: MP3Importer#files and MP3Importer#import.
    def files
      #get all file names from the path
      file_array = []
      Dir.foreach(@path) {|file|  file_array << file }
      file_array.slice(2,file_array.length-1)
    end
# Action Bronson - Larry Csonka - indie.mp3"
#
def import
  files.each do |file|
    Song.new_by_filename(file)
end

end
end


# Song.new_by_filename(some_filename)
