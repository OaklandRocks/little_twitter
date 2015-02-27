require 'sinatra'
enable :sessions

helpers do

  def current_user
    if session[:user_id] != nil
      User.find(session[:user_id])
    else
      nil
    end
  end
end
