class MP3Importer
  attr_reader :path

  def initialize (file_path)
    @path = file_path
  end

  def files
    puts Dir.entries(self.path)#.delete_if {|f| f.size < 3}
  end
end
