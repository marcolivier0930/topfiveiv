class Nflplayer
    attr_accessor :name, :url
    
    @@all = []

    def initialize(name)
        @name = name
        @url = url

        @@all << self
    end

    def self.all
        @@all
    end
end