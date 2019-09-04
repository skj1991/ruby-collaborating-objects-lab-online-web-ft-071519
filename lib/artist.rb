class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    songs = self.all
    songs.select {|song| song.artist == self}
  end

  #def add_song(song)
  #  song.artist = self
  #  @@song_count += 1
  #end



  #def add_song_by_name(name)
  #  song = Song.new(name)
  #  add_song(song)
  #  @@song_count += 1
  #end


end
