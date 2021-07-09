require_relative 'car'


describe Car do

    describe "CREATE" do

        it 'Creates an instance of the class' do
            car = Car.new('Suzuki')
            expect(car).to be_a(Car)
            expect(car.make).to eq('Suzuki')   
        end  
        
        it 'test initialize function' do
            expect{Car.new()}.to raise_exception(ArgumentError)
        end

    end

    describe "Variables" do

        it 'Access Class Variable {Can be accessed within a class method and an instance method}' do
            car = Car.new("Toyota")
            expect(Car.wheels).to eq(9)   
            expect(car.wheels).to eq(9)   
        end

        it 'Access Instance Variable {Can Only Be Accessed Inside An Instance Method}' do
            kojhovi_car = Car.new("Kojovi")
            expect(kojhovi_car.make).to eq("Kojovi")  
            expect(Car.make).to eq(nil) 
        end

    end
    
    
end