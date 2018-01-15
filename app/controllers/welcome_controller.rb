class WelcomeController < ApplicationController

  def index
    if current_user
      render html: "hello, world!"
    else
      redirect_to :new_user_session_path
    end
  end
end