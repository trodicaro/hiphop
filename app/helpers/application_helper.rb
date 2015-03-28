module ApplicationHelper

def current_user
  User.find(session[:user_id]) if session[:user_id]
end

def authorized?
  redirect_to root_path unless current_user
end

def logged_in? 
  redirect_to user_path(session[:user_id]) if current_user
end

end
