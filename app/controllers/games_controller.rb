class GamesController < ApplicationController
  include RapGenius::Client
  attr_reader :chosen_song, :mid_num

  def new
    # @game = Game.new 
    
    random = rand(1..100)
    @chosen_song = RapGenius::Song.find(random)
    @mid_num = @chosen_song.lines.count/2
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
