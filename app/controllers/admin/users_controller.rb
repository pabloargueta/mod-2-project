class Admin::UsersController < Admin::ApplicationController
  before_action :load_user, only: [:create]

  def index
  end

  def new
    @user = User.new
    @homeowners_associations = HomeownersAssociation.all
  end

  def create
    @user = User.create(user_params)
    @user.users_association_id
    redirect_to admin_users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def all_users
    @users = User.all.select{|user| user.hoa == current_user.hoa && !user.is_admin}
  end

  private

  def load_user
      @user = User.find(params[:id])
  end

  def user_params
    require(:user).permit(:first_name, :last_name, :street, :city, :state, :zip, :email)
  end
end
