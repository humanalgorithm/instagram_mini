# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end


  def update
    super
  end
  
  def cancel
    super
  end
  
  def edit
    super
  end
  
  private
  def account_update_params
    super
  end
  
end 