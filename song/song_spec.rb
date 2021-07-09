require_relative 'song'


describe Song do

    describe ".create" do

        it 'creates the song and returns song with all' do
            song = Song.create()
            expect(song).to be_a(Song)  
            expect(Song.all).to include(song)  
        end     

    end 

    describe ".new_by_name" do

        it 'initiates a song with a name property' do
            song = Song.new_by_name("koobiti")
            expect(song.name).to  eq("koobiti")  
        end
        
    end

    describe ".create_by_name" do

        it 'initiates a song with a name property' do
            song = Song.create_by_name("koobiti")
            expect(song.name).to  eq("koobiti")  
        end
        
    end

    describe ".find_by_name" do

        it 'finds songs by their names' do

            song_one = Song.new_by_name("Kumi")
            song_two = Song.new_by_name("Johh")

        end

    end
    
    
     
end
