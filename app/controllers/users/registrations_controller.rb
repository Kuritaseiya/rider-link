class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  
  private

  def user_params
    params.require(:user).permit(:nickname, :age, :mybike)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :age, :mybike])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :age, :mybike])
  end
end
