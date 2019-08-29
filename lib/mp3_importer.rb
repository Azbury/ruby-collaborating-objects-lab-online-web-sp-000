class MP3Importer
  attr_reader :path

  def initialize (file_path)
    @path = file_path
  end

  def files
    Dir.entries(self.path).delete_if {|f| f.size < 3}
  end

  def import
    Song.new_by_filename(files)
  end
end
