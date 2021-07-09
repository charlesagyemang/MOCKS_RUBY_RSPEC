require 'pry'

class Person
    attr_accessor :name, :email, :phone
    @@people = []
    @@attributes = ["name", "email", "phone"]

    def initialize(name, email="", phone="")
        @name = name
        @email = email
        @phone = phone
        self.class.all << self
    end

    
    def self.all
        @@people
    end

    def self.my_attributes
        @@attributes
    end

    
   
    

    my_attributes.each do |v|
        func_format = "def self.find_by_#{v}(val); all.find {|person| person.name == val}; end"
        eval(func_format)
    end

    # binding.pry
    

    
end