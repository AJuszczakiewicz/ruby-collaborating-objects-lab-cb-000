class MP3Importer

  attr_accessor :path

<<<<<<< HEAD
  def initialize(path)
=======
  def initialize(path="../spec/fixtures/mp3s")
>>>>>>> d1b0ecb23e1e7af73ec8d7cca9d722d97fe1d6f7
    @path = path
  end

  def files
<<<<<<< HEAD
    files = Array.new
    Dir.new(".")
    Dir.foreach(@path){ |file| files << file if file.match(/.mp3\z/)  }
    files
  end

  def import
    self.files.each{ |file| Song.new_by_filename}
=======
    Dir.chdir(@path)
    Dir.glob("*.mp3")
  end

  def import
>>>>>>> d1b0ecb23e1e7af73ec8d7cca9d722d97fe1d6f7
  end
end
