class ErrorController < ApplicationController
  def error_404
  end
  
  def error_page_not_exists
  end
  
  private
  def permit_error
  params.require(:unmatched_route).permit(:action, :controller, :image_id, :user_id)
  end
end
