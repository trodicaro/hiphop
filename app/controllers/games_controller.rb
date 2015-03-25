class GamesController < ApplicationController
  include RapGenius::Client
  
# def show
# @songs_to_guess_from = @songs.sample(4)
# @chosen_song = @songs_to_guess_from.shuffle.first


  def create
    @game = Game.new(game_params)
  end

  def new
    GamesController.create
    @game = Game.find(game_params)
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @mid_num = @chosen_song.lines.count/2
  end

  def try2
   @game = Game.find(game_params)
   @chosen_song = RapGenius::Song.find(@game.song_id)
   @mid_num = @chosen_song.lines.count/2
  end


  def final
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
 
  private 
  def game_params
    params.require(:game).permit(:song_id, :user_id, :score)
  end

  # def artist
  # @artist ||= RapGenius::Artist.find(params[:id])
  # end

end
