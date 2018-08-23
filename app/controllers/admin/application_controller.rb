class Admin::ApplicationController < ApplicationController
  before_action :admin_verification

  def admin_verification
    unless current_user.is_admin
      # note: need to add "no permissions to access"
      redirect_to 'users/home'
    end
  end
end
