require 'pry'
class Artist 

    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name 
        @@all << self
        #@songs = [] 
    end 

    def self.all
        @@all
    end 

    def add_song(song)
        
        #@songs << song
        song.artist = self
        #binding.pry 
    end 

    def self.create(name)
        artist = self.new(name)
        artist.name = name 
        artist
    end 

    def self.find(name)
        self.all.detect {|artist| artist.name == name }
    end 

    
    
    def self.find_or_create_by_name(name)
         self.find(name) || self.create(name)       
    end 

    def print_songs
        songs.each {|song| puts song.name}
    end 
        
    def songs 
        #binding.pry
         Song.all.select {|song| song.artist == self}
        #@song.each {|song| song.artist = self}
        
    end 




end 

