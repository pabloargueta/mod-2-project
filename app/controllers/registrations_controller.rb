class RegistrationsController < Devise::RegistrationsController

  def new
    @homeowners_associations = HomeownersAssociation.all
    super
   
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :homeowners_association_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :homeowners_association_id)
  end
end
