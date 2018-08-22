class MainController < ApplicationController
  
  def home

  end

  def login

    if user_signed_in?
      redirect_to "www.google.com"
    else
      redirect_to new_user_session_path
    end
  end

  def signup
    if user_signed_in?
    else
      redirect_to new_user_registration_path
    end
  end

  def about
    
  end

  def signup
  end
end
