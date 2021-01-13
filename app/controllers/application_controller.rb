class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :age, :mybike, :gender_id, :prefecture_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :age, :mybike,:gender_id, :prefecture_id])
  end
end
