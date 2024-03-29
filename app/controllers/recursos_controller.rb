class RecursosController < ApplicationController
  # GET /recursos
  # GET /recursos.json
  load_and_authorize_resource
  def index
    @recursos = Recurso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recursos }
    end
  end

  # GET /recursos/1
  # GET /recursos/1.json
  def show
    @recurso = Recurso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recurso }
    end
  end

  # GET /recursos/new
  # GET /recursos/new.json
  def new
    @recurso = Recurso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recurso }
    end
  end

  # GET /recursos/1/edit
  def edit
    @recurso = Recurso.find(params[:id])
  end

  # POST /recursos
  # POST /recursos.json
  def create
    @recurso = Recurso.new(params[:recurso])

    respond_to do |format|
      if @recurso.save
        format.html { redirect_to @recurso, notice: 'Recurso was successfully created.' }
        format.json { render json: @recurso, status: :created, location: @recurso }
      else
        format.html { render action: "new" }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recursos/1
  # PUT /recursos/1.json
  def update
    @recurso = Recurso.find(params[:id])

    respond_to do |format|
      if @recurso.update_attributes(params[:recurso])
        format.html { redirect_to @recurso, notice: 'Recurso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursos/1
  # DELETE /recursos/1.json
  def destroy
    @recurso = Recurso.find(params[:id])
    @recurso.destroy

    respond_to do |format|
      format.html { redirect_to recursos_url }
      format.json { head :no_content }
    end
  end
end
