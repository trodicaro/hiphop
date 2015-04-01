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
   
    4.times do
      list_of_answers << RapGenius::Song.find(rand(1..100)).artist.name
     
    end
    list_of_answers
  	end
end
