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
    redirect_to '/home' # NEED TO REDIRECT OR LOG THEM IN
  end

  def all_users
    @associations = HomeownersAssociation.all

    # Parameters {"utf8"=>"✓", "homeowners_association"=>{"id"=>"3"}, "controller"=>"admin/users", "action"=>"all_users"}
    if params[:homeowners_association]
      @users = User.all.select {|user| user.homeowners_association.id == params[:homeowners_association][:id].to_i}
    end
  end

  private

  def load_user
      @user = User.find(params[:id])
  end

  def user_params
    require(:user).permit(:first_name, :last_name, :street, :city, :state, :zip, :email)
  end
end
