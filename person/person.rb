require 'pry'

class Person
    attr_accessor :name
    @@people = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    
    def self.all
        @@people
    end

    
    
end