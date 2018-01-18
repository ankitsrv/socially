class WelcomeController < ApplicationController

  def index
    if current_user
      @user = current_user
      render :template => 'users/show'
      #render :users_show_path, :controller=> 'users'
    else
      redirect_to :login
    end
  end
end