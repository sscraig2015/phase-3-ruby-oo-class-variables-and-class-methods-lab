require "pry"

class Song

attr_accessor 
attr_reader :artist_count, :genre_count, :genre, :artist, :name


@@count = 0
@@genres = []
@@artists= [].uniq

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def genres
        @@genres
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end