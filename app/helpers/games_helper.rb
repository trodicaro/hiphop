module GamesHelper

	def chosen_song
		@game = Game.find(params[:id])
	    RapGenius::Song.find(@game.song_id)
	end

	def mid_num
		 chosen_song.lines.count/2	
	end

	def list_of_answers
    list_of_answers = []

    while list_of_answers.length < 4 do
      
      begin
         name = RapGenius::Song.find(rand(1..100000)).artist.name
         rescue RapGenius::NotFoundError   
      end 

      if name != chosen_song.artist.name && list_of_answers.include?(name) == false
        list_of_answers << name
      end
    
    end 
    
    list_of_answers << chosen_song.artist.name
    list_of_answers.shuffle!
  	
    end
end
