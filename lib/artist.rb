class Artist
  attr_accessor :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def find_or_create_by_name
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def add_song(song)
    @songs << song
  end

  def self.songs
    @songs
  end

end
