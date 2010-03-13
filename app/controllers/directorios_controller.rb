class DirectoriosController < ApplicationController
  before_filter :verificar_session
  #before_filter :verificar_session
  layout 'inicio'
  # GET /directorios
  # GET /directorios.xml
  def index
    @directorios = Directorio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @directorios }
    end
  end

  # GET /directorios/1
  # GET /directorios/1.xml
  def show
    @directorio = Directorio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @directorio }
    end
  end

  # GET /directorios/new
  # GET /directorios/new.xml
  def new
    @directorio = Directorio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @directorio }
    end
  end

  # GET /directorios/1/edit
  def edit
    @directorio = Directorio.find(params[:id])
  end

  # POST /directorios
  # POST /directorios.xml
  def create
    @directorio = Directorio.new(params[:directorio])

    respond_to do |format|
      if @directorio.save
        flash[:notice] = 'Directorio was successfully created.'
        format.html { redirect_to(@directorio) }
        format.xml  { render :xml => @directorio, :status => :created, :location => @directorio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @directorio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /directorios/1
  # PUT /directorios/1.xml
  def update
    @directorio = Directorio.find(params[:id])

    respond_to do |format|
      if @directorio.update_attributes(params[:directorio])
        flash[:notice] = 'Directorio was successfully updated.'
        format.html { redirect_to(@directorio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @directorio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /directorios/1
  # DELETE /directorios/1.xml
  def destroy
    @directorio = Directorio.find(params[:id])
    @directorio.destroy

    respond_to do |format|
      format.html { redirect_to(directorios_url) }
      format.xml  { head :ok }
    end
  end
end
