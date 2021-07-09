require 'pry'

class Person
    attr_accessor :name, :email, :phone
    @@people = []

    def initialize(name, email="", phone="", save=true)
        @name = name
        @email = email
        @phone = phone
        self.class.all << self if save
    end

    
    def self.all
        @@people
    end

    def self.my_attributes
        @@attributes
    end

    def self.in_vars
        m = self.new("Init", "", "", save=false).instance_variables
    end

    in_vars.each do |v|
        v = v.to_s[1..-1]
        func_format = "def self.find_by_#{v}(val); all.find {|person| person.name == val}; end"
        eval(func_format)
    end

    # binding.pry
    

    
end