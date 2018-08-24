class Admin::ApplicationController < ApplicationController
  before_action :admin_verification
  before_action :authenticate_user!


  def admin_verification
    unless current_user && current_user.is_admin
      # note: need to add "no permissions to access"
      redirect_to home_path
    end
  end

  def index
  end
end
