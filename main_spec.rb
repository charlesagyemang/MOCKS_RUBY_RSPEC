require_relative 'main'


describe PolyTank do
    describe "#fill_poly_tank" do
        it 'should have maximum water' do
            tank = PolyTank.new(40)
            # pump = Pump.new
            # instead of actually calling pump which is the 
            # dependency we are mocking the pum with a double and 
            # returning a desired output for our test to pass

            pump = double("Pump", dispense_water: 100)
            tank.fill_poly_tank(pump)

            expect(tank.water_level).to  eq(100)
        end     
    end  
end
