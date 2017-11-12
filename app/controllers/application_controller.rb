class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_filter :configure_permitted_parameters, if: :devise_controller?
    
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ActionController::RoutingError, :with => :page_not_exists
  rescue_from ActionView::Template::Error, :with => :page_not_exists
  rescue_from ActionController::UrlGenerationError, :with => :page_not_exists
  
  def record_not_found
    redirect_to error_404_path
  end 
  
  def page_not_exists
    if params[:unmatched_route]
      redirect_to error_404_path
    end
    redirect_to error_404_path(:unmatched_route=>"error")
  end
    
   protected
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password, :password_confirmation, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password, :password_confirmation, :avatar])
    end
end