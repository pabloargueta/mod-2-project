class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_user

  def home  
  end
  
  def new
    @homeowners_associations = HomeownersAssociation.all
  end

  def create
    @user = User.create(user_params)
    @user.users_association_id 
    redirect to '/home' # NEED TO REDIRECT OR LOG THEM IN
  end

  def show
    
  end

  private

  def load_user

    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.new
    end
  end

  def user_params
    require(:user).permit(:first_name, :last_name, :street, :city, :state, :zip, :email)
  end
end
