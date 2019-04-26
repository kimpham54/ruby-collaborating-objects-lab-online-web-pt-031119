require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

def self.new_by_filename(songname)
  songname = songname.split(" - ")
  song = Song.new(songname[1])
  artist = Artist.find_or_create_by_name(songname[0])
  @artist = artist
  # artist.songs << self
  song
  # binding.pry
end

# song.artist = Artist.find_or_create_by_name(songname[0])
# @artist = artist
# self.artist.songs << self
# binding.pry
end
