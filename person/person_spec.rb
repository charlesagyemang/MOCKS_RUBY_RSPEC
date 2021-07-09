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

    describe "fin_by_funcion_dynamic" do

        it 'find_by_name' do
            # get first person
            person = Person.find_by_name("Kwame")
            person.phone = "0277882277"

            expect(Person.methods).to include("find_by_name".to_sym)  
            expect(person).to be_a(Person)
            expect(person.phone).to eq("0277882277")

        end
        
    end
    

end