class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def youtube_video(url)
    render :partial => 'shared/youtube', :locals => { :url => url }
  end 
end
