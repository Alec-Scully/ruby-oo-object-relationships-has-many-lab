require 'pry'

class Artist
    attr_accessor :name
    @@count = 0

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do | song |
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
        
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.each do | song |
            @@count += 1
        end
        @@count
    end

end