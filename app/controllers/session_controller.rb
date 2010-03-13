class SessionController < ApplicationController
  layout 'inicio'
  # Metodo para realizar el login de un usuario
  def new
    @user = User.new
  end

  # metodo para poder validar al usuario
  def create
    # Buscamos con este metodo mediante el login
    @user = User.find_by_login(params[:user][:login])

    # Verificamos si el password es correcto
    if @user and @user.pass == params[:user][:pass]
      # Mensaje notice que se presentara
      flash[:notice] = "Ha ingresado correctamente"
      # Se almance el id del usuario, tipo y su nombre
      session[:user] = {}
      # Se itera a traves de los elementos
      [:id, :tipo, :nombres].each{ |v| session[:user][v] = @user[v] }
      # redirecion a la raiz
      redirect_to "/inicio"
    else
      @user = User.new
      # Se adiciona el error a @usuario
      @user.errors.add_to_base("Ha ingresado un login o password incorrectos")
      # Presentar la accion :new app/views/session/new.html.erb
      render :action => :new
    end
  end

  # Metodo para poder eliminar la sesion del usuario
  def destroy
    # Borrar los elementos de la sesion
    [:id, :tipo, :nombres].each{ |v| session[:user].delete(v) }
    # redirecion a la raiz
    redirect_to "/inicio"
  end
end
