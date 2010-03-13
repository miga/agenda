# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  protected

  # Metodo que redireciona a la raiz en caso de que el usuario no este logueado
  def verificar_session
    unless session[:user] and session[:user][:tipo] == 'admin'
      redirect_to "/login"
    end
  end

end
