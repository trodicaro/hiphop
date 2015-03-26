class GamesController < ApplicationController
  include RapGenius::Client
  
# def show
# @songs_to_guess_from = @songs.sample(4)
# @chosen_song = @songs_to_guess_from.shuffle.first


  def create
    @random= rand(1..100)
    @current_user= 1
    @game = Game.create!({song_id: @random, user_id: @current_user, score: 0})
    redirect_to try1_game_path(@game)
  end

  def try1
    @game = Game.find(params[:id])
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @mid_num = @chosen_song.lines.count/2
  end

  def try2
  @game = Game.find(params[:id])
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @mid_num = @chosen_song.lines.count/2
  end


  def final
     @game = Game.find(params[:id])
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @mid_num = @chosen_song.lines.count/2
  end

  # def answer
  #   if 
  #   redirect_to success_game_path 
  #   else
  #   redirect_to fail_game_path
  # end
  
  # def fail
  #   random = rand(1..100)
  #   @chosen_song = RapGenius::Song.find(random)
  #   @mid_num = @chosen_song.lines.count/2
  # end

  # def success
# random = rand(1..100)
#     @chosen_song = RapGenius::Song.find(random)
#     @mid_num = @chosen_song.lines.count/2
#   end

  # def artist
  # @artist ||= RapGenius::Artist.find(params[:id])
  # end

end
