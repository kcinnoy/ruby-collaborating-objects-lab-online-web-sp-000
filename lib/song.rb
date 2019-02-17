require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[1]
    song_name = filename.split(" - ")[0]
    extra = filename.split(" - ")[2]

    song = self.new(song_name)
    binding.pry
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end

end
