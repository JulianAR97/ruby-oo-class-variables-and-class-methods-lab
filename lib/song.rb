class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            genre_hash[genre] == nil ? genre_hash[genre] = 1 : genre_hash[genre] += 1
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            artist_hash[artist] == nil ? artist_hash[artist] = 1 : artist_hash[artist] += 1
        end
        artist_hash
    end
    
    

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end
end

# vera = Song.new("Vera", "Pink Floyd", "Rock")
# money = Song.new("Money", "Pink Floyd", "Rock")
# dna = Song.new("DNA", "Kendrick Lamar", "Hip-Hop")
# skin = Song.new("Skin", "Mac Miller", "Hip-Hop")

# puts "Number of Songs: #{Song.count}" # => 4
# print "Artists: #{Song.artists}\n" # => ["Pink Floyd", "Kendrick Lamar", "Mac Miller"]
# print "Genres: #{Song.genres}\n" # => ["Rock", "Hip-Hop"]
# print "Genre Count: #{Song.genre_count}\n" # => {"Rock"  => 2, "Hip-Hop" => 2}
# print "Artist Count: #{Song.artist_count}" # => {"Pink Floyd" => 2, "Kendrick Lamar" => 1, "Mac Miler => 1"}





