class Artist
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = [] 
  end

<<<<<<< HEAD
  def songs 
     Song.all.select {|song| self} #selecting all songs from specific artirts
=======
  def songs
    @songs
>>>>>>> ba5ebce78d857eeadeed28a1499c1088c73a986b
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
    @songs
  end

  def self.song_count
    Song.all.count
  end
end
