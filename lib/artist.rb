require 'pry'
class Artist 
attr_accessor :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end 
#binding.pry
def self.all
    @@all
end

def new_song(song_name, genre)
    Song.new(song_name, self, genre)
end

def songs
   # binding.pry
    Song.all.select do |song_instance|
        song_instance.artist == self
    end
end

def genres
    self.songs.map do |my_songs|
        my_songs.genre
    end
end
#binding.pry
end