class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file_name)
     artist_name = file_name.split(" - ")[0] #split on the artist
     song_name = file_name.split(" - ")[1] #split on the song name
     song = Song.new(song_name) #create a new song with the song_name created above
     song.artist =  Artist.find_or_create_by_name(artist_name) #assign this song's artist to new artist or find the existing artist
     song.artist.add_song(self) #add the song
     song  #return the song 
   end

  end
