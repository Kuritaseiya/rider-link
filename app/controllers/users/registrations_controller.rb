class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  private

  def user_params
    params.require(:user).permit(:nickname, :age, :mybike, :gender_id, :prefecture_id)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :age, :mybike, :gender_id, :prefecture_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :age, :mybike, :gender_id, :prefecture_id])
  end
end
