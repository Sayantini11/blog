class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?

   rescue_from CanCan::AccessDenied do 
   	   redirect_to root_path, notice: "The page does not exist"

   	
   end

   protected
   def configure_permitted_parameters
   	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :mobile])
   end
end
