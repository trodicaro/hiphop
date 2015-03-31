class WelcomeController < ApplicationController
  
  include ApplicationHelper
  before_action :logged_in?

  def index
    
    # if session[:user_id]
    #   @game_scores = 
      #find all games where user_id = session[:user_id]
    # end

  end
end
