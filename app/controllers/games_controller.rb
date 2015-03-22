class GamesController < ApplicationController


  def new
  	random = rand(1..10000)
  	@chosen_song = RapGenius::Song.find(random)
  	@chosen_line = @chosen_song
  	mid_num = @chosen_song.lines.count/2
  	@mid_lyric = @chosen_song.lines[mid_num].lyric 
  
  end

  # def start
  # 	

  # end

  def success
  end

  def try2
  end

  def fail
  end

  def final
  end

end
