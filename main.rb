class PolyTank

    attr_accessor :water_level

    def initialize(water_level)
      @water_level = water_level
    end

    def fill_poly_tank(pump)
        return @water_level = pump.dispense_water
    end
    
end

class Pump

    def dispense_water
        return 100
    end
    
end
