class MiembrosController < ApplicationController
  # GET /miembros
  # GET /miembros.json
  load_and_authorize_resource
  def index
    @miembros = Miembro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miembros }
    end
  end

  # GET /miembros/1
  # GET /miembros/1.json
  def show
    @miembro = Miembro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @miembro }
    end
  end

  # GET /miembros/new
  # GET /miembros/new.json
  def new
    @miembro = Miembro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @miembro }
    end
  end

  # GET /miembros/1/edit
  def edit
    @miembro = Miembro.find(params[:id])
  end

  # POST /miembros
  # POST /miembros.json
  def create
    @miembro = Miembro.new(params[:miembro])

    respond_to do |format|
      if @miembro.save
        format.html { redirect_to @miembro, notice: 'Miembro was successfully created.' }
        format.json { render json: @miembro, status: :created, location: @miembro }
      else
        format.html { render action: "new" }
        format.json { render json: @miembro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miembros/1
  # PUT /miembros/1.json
  def update
    @miembro = Miembro.find(params[:id])

    respond_to do |format|
      if @miembro.update_attributes(params[:miembro])
        format.html { redirect_to @miembro, notice: 'Miembro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @miembro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miembros/1
  # DELETE /miembros/1.json
  def destroy
    @miembro = Miembro.find(params[:id])
    @miembro.destroy

    respond_to do |format|
      format.html { redirect_to miembros_url }
      format.json { head :no_content }
    end
  end
end
