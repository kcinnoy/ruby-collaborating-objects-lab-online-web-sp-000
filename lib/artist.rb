class Artist
  attr_accessor :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def find_or_create_by_name
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def add_song
    
  end
end
