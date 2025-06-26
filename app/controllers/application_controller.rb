class ApplicationController < ActionController::Base
   before_action :permit_bio, if: :devise_controller?

  def permit_bio
    devise_parameter_sanitizer.permit(:account_update, keys: [ :bio ])
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
