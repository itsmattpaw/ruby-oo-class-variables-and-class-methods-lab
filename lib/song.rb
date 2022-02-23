class Song
    attr_reader :name, :artist, :genre

    #class variables
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, a, g)
        @name = name
        @artist = a
        @genre = g
        @@count += 1
        @@artists << a
        @@genres << g
    end
    def self.count 
        @@count
    end
    def self.artists 
        @@artists.uniq
    end
    def self.genres 
        @@genres.uniq
    end
    def self.count_attributes(list)
        attributes = {}
    
        list.uniq.each do |genre|
          attributes[genre] = list.count(genre)
        end
        attributes
      end
    def self.genre_count 
        count_attributes(@@genres)
    end
    def self.artist_count 
        count_attributes(@@artists)
    end
end