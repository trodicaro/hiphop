class GamesController < ApplicationController
  include RapGenius::Client
  before_action :which_lyrics, except: [:create]

  def create
    @random= rand(1..100) #may want to change how random is selected
    @current_user= 1 #connect to users model
    @game = Game.create!({song_id: @random, user_id: @current_user, score: 0})
    redirect_to try1_game_path(@game)
  end

  def try1
    
  end

  def try2
  
  end


  def final
   
  end

  
  def fail

  end

  def success
  end

  # def artist
  # @artist ||= RapGenius::Artist.find(params[:id])
  # end

private
  def which_lyrics
    @game = Game.find(params[:id])
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @mid_num = @chosen_song.lines.count/2
  end

end
