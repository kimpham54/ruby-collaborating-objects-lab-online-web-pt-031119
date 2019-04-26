require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


def self.new_by_filename(songname)
  songname = songname.split(" - ")
  binding.pry
  song = Song.new(songname[1])
  artist = Artist.find_or_create_by_name(songname[0])
  # @artist = artist doesn't work because self is the class, @artist doesn't know what instance you're referring to
  song.artist = artist
  # artist.songs << song
  # artist.add_song(song)
  song

end

# song.artist = Artist.find_or_create_by_name(songname[0])
# @artist = artist
# self.artist.songs << self
# binding.pry
end
