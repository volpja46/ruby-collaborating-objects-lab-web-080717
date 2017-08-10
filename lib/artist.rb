class Artist

attr_accessor :name, :songs

@@all = []

def self.all
  @@all
end

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save #save the artist instance to the class of artists
     @@all << self
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    Artist.all.find do |artist|
      artist.name == name
    end
  end

  def self.create_by_name(name)
    #song isnt there so create a new one
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end
 # Artist #save adds the artist instance to the @@all class variable

 def print_songs
   @songs.each do |song|
     puts song.name
   end
 end
end
