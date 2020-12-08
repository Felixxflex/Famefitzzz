class Users::RegistrationsController < Devise::RegistrationsController

  # Overwrite update_resource to let users to update their user without giving their password
  

  def profile_sign_up
    @user = current_user
    if @user
      render :profile_sign_up
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
  end

  def after_sign_up_path_for(resource)
    @user = current_user
    @user.update
    profile_sign_up_path event: :authentication #this will throw if @user is not activated
  end
end