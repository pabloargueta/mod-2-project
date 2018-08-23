class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if current_user.is_admin
       admin_users_path
    else
       user_path
    end
  end
end
