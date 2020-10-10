class Genre

    attr_accessor :name 
    @@all = []

    def initialize (name)
        @name = name 
        @@all << self

    end
    def self.all
        @@all
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.genre == self
        end
    end

    def artists
        self.songs.map do |my_songs|
            my_songs.artist

        end
    end

    # def add_song(song)
    #     songs << song
    # end
end
