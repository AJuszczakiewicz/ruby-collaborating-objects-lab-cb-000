class Song
<<<<<<< HEAD
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split("-")
    title = song_info[1].strip
    artist_name = song_info[0].strip
    new_song = self.new(title)
    artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist = artist
    artist.add_song(new_song.name)
    artist.save
    new_song
=======
  attr_accessor :title

  def initialize(title)
    @title = title
>>>>>>> d1b0ecb23e1e7af73ec8d7cca9d722d97fe1d6f7
  end
end
