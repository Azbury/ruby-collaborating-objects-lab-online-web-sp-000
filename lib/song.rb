class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename (filenames)
    file_array = filenames.split(" - ")
    new_song = Song.new(file_array[1])
  end
end
