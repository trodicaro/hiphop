class Game < ActiveRecord::Base

	def song_id
		@song_id ||= rand(1..100)
	end
end
