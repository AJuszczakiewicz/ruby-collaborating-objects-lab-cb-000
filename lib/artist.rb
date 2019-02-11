class Artist
  attr_accessor :name, :songs
  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
    @songs.uniq
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find{ |artist| artist.name == name}
      if artist.nil?
        artist = self.new(name)
      end
      artist
  end

  def print_songs
<<<<<<< HEAD
    puts self.songs.map{|song| song.name}
=======
    puts self.songs.map{|song| song.title}
>>>>>>> d1b0ecb23e1e7af73ec8d7cca9d722d97fe1d6f7
  end
end
