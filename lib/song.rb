require('pry')

class Song
    
    attr_accessor :name, :artist, :genre
    @@count = 0 # Counter for song total
    @@genres = [] # Class Array for genres
    @@artists = [] # Class Array for artists
    @@total_genres = {} # Hash of genres and songs within genre
    @@total_artists = {} # Hash of artists and songs with artist

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    # returns the amount of albums
    def self.count
       @@count
    end

    # Takes the genres Array and returns without duplicates
    def self.genres
        @@genres.uniq
    end
    
    # Takes the artists Array and returns without duplicates
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each do |ele|
            if !@@total_genres.include?(ele)
                @@total_genres[ele] = 1
            else
                @@total_genres[ele] += 1
            end
        end
        
        @@total_genres
    end

    def self.artist_count
        @@artists.each do |ele|
            if !@@total_artists.include?(ele)
                @@total_artists[ele] = 1
            else
                @@total_artists[ele] += 1
            end
        end

        @@total_artists
    end
end