class CapacitacionsController < ApplicationController
  # GET /capacitacions
  # GET /capacitacions.json
  load_and_authorize_resource
  def index
    @capacitacions = Capacitacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @capacitacions }
    end
  end

  # GET /capacitacions/1
  # GET /capacitacions/1.json
  def show
    @capacitacion = Capacitacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @capacitacion }
    end
  end

  # GET /capacitacions/new
  # GET /capacitacions/new.json
  def new
    @capacitacion = Capacitacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @capacitacion }
    end
  end

  # GET /capacitacions/1/edit
  def edit
    @capacitacion = Capacitacion.find(params[:id])
  end

  # POST /capacitacions
  # POST /capacitacions.json
  def create
    @capacitacion = Capacitacion.new(params[:capacitacion])

    respond_to do |format|
      if @capacitacion.save
        format.html { redirect_to @capacitacion, notice: 'Capacitacion was successfully created.' }
        format.json { render json: @capacitacion, status: :created, location: @capacitacion }
      else
        format.html { render action: "new" }
        format.json { render json: @capacitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /capacitacions/1
  # PUT /capacitacions/1.json
  def update
    @capacitacion = Capacitacion.find(params[:id])

    respond_to do |format|
      if @capacitacion.update_attributes(params[:capacitacion])
        format.html { redirect_to @capacitacion, notice: 'Capacitacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @capacitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capacitacions/1
  # DELETE /capacitacions/1.json
  def destroy
    @capacitacion = Capacitacion.find(params[:id])
    @capacitacion.destroy

    respond_to do |format|
      format.html { redirect_to capacitacions_url }
      format.json { head :no_content }
    end
  end
end
