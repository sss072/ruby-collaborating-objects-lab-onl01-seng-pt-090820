class Song 
  attr_accessor :name, :artist 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def self.new_by_filename(given_file)
    parsed_file = given_file.split(" - ")
    song = Song.new(parsed_file[1])
    song.artist = parsed_file[0] 
    song 
  end 
  def artist_name=(string_given)
    self.artist = Artist.find_or_create_by_name(string_given)
    artist.add_song(self)
  end
end
  