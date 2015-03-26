module GamesHelper

	def chosen_song
		@game = Game.find(params[:id])
	    RapGenius::Song.find(@game.song_id)
	end

	def mid_num
		 chosen_song.lines.count/2	
	end
end
