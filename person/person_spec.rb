require_relative 'person'

describe Person do

    describe 'Create Person' do

        it 'throws an exception when a new instance is created without passing a name' do
            expect { Person.new() }.to raise_error(ArgumentError)
        end

        it 'creates user with name successfully' do
            person = Person.new("Kwame")

            expect(person).to be_a(Person)
            expect(person.name).to eq("Kwame")    
        end
      
    end



    describe '.all' do
            
        it 'get all persons present. Ensure .all function works' do
            emeka    = Person.new("Emeka")
            amaka    = Person.new("Amaka")
            chinedu  = Person.new("Chinedu")
            everyone = Person.all

            expect(everyone.count).to eq(4)
            expect(everyone.first().name).to eq("Kwame")                
        end

    end


    describe "single source of truth of" do

        it 'it should still not break even when the variable name of @@all chnages to something readerble' do
            
            expect(Person.all.count).to eq(4)  

        end
        
    end

    describe "fin_by_funcion" do

        it 'it should still not break even when the variable name of @@all chnages to something readerble' do
            
            expect(Person.all.count).to eq(4)  

        end
        
    end
    

end