class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, :redirect_unless_admin, only: [:new, :create]
  skip_before_action :require_no_athentication

  def new
    @homeowners_associations = HomeownersAssociation.all
    super
   
  end



  private

  def redirect_unless_admin
    unless current_user.is_admin
      flash[:error] = "Only admins can do that"
        redirect_to root_path
    end
  end

  def sign_up(resource_name, resource)
    true
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :homeowners_association_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :homeowners_association_id)
  end
end
