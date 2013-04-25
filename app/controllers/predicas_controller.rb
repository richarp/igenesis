class PredicasController < ApplicationController
  # GET /predicas
  # GET /predicas.json
  load_and_authorize_resource
  def index
    @predicas = Predica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @predicas }
    end
  end

  # GET /predicas/1
  # GET /predicas/1.json
  def show
    @predica = Predica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @predica }
    end
  end

  # GET /predicas/new
  # GET /predicas/new.json
  def new
    @predica = Predica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @predica }
    end
  end

  # GET /predicas/1/edit
  def edit
    @predica = Predica.find(params[:id])
  end

  # POST /predicas
  # POST /predicas.json
  def create
    @predica = Predica.new(params[:predica])

    respond_to do |format|
      if @predica.save
        format.html { redirect_to @predica, notice: 'Predica  creada.' }
        format.json { render json: @predica, status: :created, location: @predica }
      else
        format.html { render action: "new" }
        format.json { render json: @predica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /predicas/1
  # PUT /predicas/1.json
  def update
    @predica = Predica.find(params[:id])

    respond_to do |format|
      if @predica.update_attributes(params[:predica])
        format.html { redirect_to @predica, notice: 'Predica  actualizada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @predica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predicas/1
  # DELETE /predicas/1.json
  def destroy
    @predica = Predica.find(params[:id])
    @predica.destroy

    respond_to do |format|
      format.html { redirect_to predicas_url }
      format.json { head :no_content }
    end
  end
end
