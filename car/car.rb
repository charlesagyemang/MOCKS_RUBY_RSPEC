class Car
    attr_accessor :make

    @@wheels = 4
    @make

    def initialize(make)
      @make = make
    end

    def self.wheels
        @@wheels += 5
    end
    
    def wheels
        @@wheels
    end

    def self.make
        @make
    end
    
    
   
    
end