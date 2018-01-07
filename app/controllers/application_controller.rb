class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :admin_user

  before_action :images

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :gender, :dob, :role, :background, :random])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :gender, :dob, :role, :background, :random])
  end


  def admin_user
    @admin = User.where(role: 'admin')
  end

  def images
    @images = Image.first
    @all_images = Image
  end

end
