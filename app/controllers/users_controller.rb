class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_user

  def index
  end

  def show
  end

  private

  def load_user
    if session[:id]
      @user = User.find(sesion[:id])
    elsif params[:id] == "sign_out"
      sign_out current_user
      redirect_to '/'
    else
      @user = User.new
    end
  end

  def user_params
    require(:user).permit(:first_name, :last_name, :street, :city, :state, :zip, :email)
  end
end
