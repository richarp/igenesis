class ContactosController < ApplicationController
  # GET /contactos
  # GET /contactos.json
  load_and_authorize_resource

  def index
    @contactos = Contacto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contactos }
    end
  end
  def contactenos
    @contacto = Contacto.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contacto }
    end
  end

  # GET /contactos/1
  # GET /contactos/1.json
  def show
    @contacto = Contacto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contacto }
    end
  end

  # GET /contactos/new
  # GET /contactos/new.json
  def new
    @contacto = Contacto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contacto }
    end
  end

  # GET /contactos/1/edit
  def edit
    @contacto = Contacto.find(params[:id])
  end

  # POST /contactos
  # POST /contactos.json
  def create
    @contacto = Contacto.new(params[:contacto])

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to root_path , notice: 'Mensaje  enviado nos comunicaremos lo mas antes posible.' }
        format.json { render json: @contacto, status: :created, location: @contacto }
      else
        format.html { render action: "contactenos" }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contactos/1
  # PUT /contactos/1.json
  def update
    @contacto = Contacto.find(params[:id])

    respond_to do |format|
      if @contacto.update_attributes(params[:contacto])
        format.html { redirect_to @contacto, notice: 'Contacto actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactos/1
  # DELETE /contactos/1.json
  def destroy
    @contacto = Contacto.find(params[:id])
    @contacto.destroy

    respond_to do |format|
      format.html { redirect_to contactos_url }
      format.json { head :no_content }
    end
  end
end
