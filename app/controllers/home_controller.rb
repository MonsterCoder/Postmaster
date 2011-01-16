class HomeController < ApplicationController
  before_filter :authenticate
  
  def index
  end
  

    def authenticate
      redirect_to new_user_session_path unless current_user
    end
end
