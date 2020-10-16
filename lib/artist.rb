class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def add_song(song_name)
    song_name.artist = self 
  end 
  def songs 
    Song.all.select { |song| song.artist == self } 
  end 
  def self.find_or_create_by_name(name_given)
    self.all.find { |element| element == name_given } || artist = Artist.new(name_given)
  end 
  def print_songs 
    puts Song.all.select { |song| song.artist == self }
  end 
end 
    