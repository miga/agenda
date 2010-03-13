# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  # Presenta el nombre del usuario y un vinvulo de salida para
  def mostrar_usuario
    if session[:user] and session[:user][:id]
      html = link_to(session[:user][:nombres], user_path(session[:user][:id]) )
      html << " "
      html << link_to("Salir", "/logout", :class => 'salir')
    end

  end

  # determina si el usuario esta logueado y es administrador
  def admin?
    session[:user] and session[:user][:tipo] == 'admin'
  end
end
