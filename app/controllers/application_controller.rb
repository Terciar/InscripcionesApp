class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 protected

  # A donde va cuando inicia la sesión.
  def after_sign_in_path_for(resource)
    if current_user.habilitado?
      flash[:notice] = "Bienvenido #{current_user.nombre} - Cliente."
       "/"
      #session[:previous_url] || root_path
    else
      sign_out(resource)
      flash[:warning] =  "Su usuario ha sido deshabilitado, por favor comuniquese con el admistrador (contacto@terciar.ga)."
      "/"
    end
  end

  # A donde va cuando finaliza la sesión.
  def after_sign_out_path_for(resource_or_scope)
    # request.referrer
    flash[:notice] = "Sesión cerrada."
    "/"
  end


    # Parametros para formularios de Devise.
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit( :nombre , :email , :tipo, :habilitado , :password , :password_confirmation )
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit( :nombre , :email, :tipo, :habilitado, :password , :password_confirmation , :current_password )
    end
  end
end
