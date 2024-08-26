class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  def after_sign_in_path_for(resource)
    posts_path
  end

  def authorize_request(kind = nil)
    unless kind.include?(current_user.role)
      redirect_to posts_path, notice: "You are not authorized to perform this action"
    end
  end
  
end
