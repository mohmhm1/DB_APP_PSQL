class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Registrations are not open.'
    redirect_to about_path
  end

  def create
    flash[:info] = 'Registrations are not open.'
    redirect_to about_path
  end
  def update
  
  super

  end




end




