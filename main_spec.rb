require_relative 'main'


describe PolyTank do
    describe "#fill_poly_tank" do
        it 'should have maximum water' do
            tank = PolyTank.new(40)
            pump = Pump.new
            tank.fill_poly_tank(pump)

            expect(tank.water_level).to  eq(100)
        end     
    end  
end
