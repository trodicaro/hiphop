class GamesController < ApplicationController
  include RapGenius::Client
  
  attr_reader :chosen_song, :mid_num

def initialize
    random = rand(1..100)
    @chosen_song = RapGenius::Song.find(random)
    @mid_num = @chosen_song.lines.count/2 
end

  def new
 
    @sample_game = Game.new 
  	# random = rand(1..100)
  	# @chosen_song = RapGenius::Song.find(random)
  	# @mid_num = @chosen_song.lines.count/2
  end

  # def start
  # 	

  # end

  def success

  end

  def try2
     @game
  end

  def fail
  end

  def final
  end

end
