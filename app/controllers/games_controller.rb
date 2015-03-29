class GamesController < ApplicationController
  include RapGenius::Client
  include ApplicationHelper

  before_action :which_lyrics, except: [:create]
  before_action :authorized?
  
  def create
    @random= rand(1..100) #may want to change how random is selected
    @game = Game.create!({song_id: @random, user_id: session[:user_id], score: 0})
    redirect_to try1_game_path(@game)
  end

  def list_of_answers
    @game = Game.find(params[:id])
    @chosen_song = RapGenius::Song.find(@game.song_id)
    @list_of_answers = []
    
    4.times do
      list_of_answers << RapGenius::Song.find(rand(1..100)).artist.name
    end

    @list_of_answers << @chosen_song.artist.name
    @list_of_answers.shuffle!
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

 

