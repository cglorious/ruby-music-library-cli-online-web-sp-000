require "pry"

class MusicImporter

  attr_accessor :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    Dir["./spec/fixtures/mp3s/**/*.mp3"].map {|f| File.basename(f)}

    binding.pry
  end

  def self.import
    Song.create_from_filename
  end

  def import
    files.each {|e| Song.create_from_filename(e)}
  end

end
