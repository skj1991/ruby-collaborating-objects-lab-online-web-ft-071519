class Mp3_importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
