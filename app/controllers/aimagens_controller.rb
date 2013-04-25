class AimagensController < ApplicationController
  # GET /aimagens
  # GET /aimagens.json
  load_and_authorize_resource
  def index
    @aimagens = Aimagen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aimagens }
    end
  end

  # GET /aimagens/1
  # GET /aimagens/1.json
  def show
    @aimagen = Aimagen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aimagen }
    end
  end

  # GET /aimagens/new
  # GET /aimagens/new.json
  def new
    @aimagen = Aimagen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aimagen }
    end
  end

  # GET /aimagens/1/edit
  def edit
    @aimagen = Aimagen.find(params[:id])
  end

  # POST /aimagens
  # POST /aimagens.json
  def create
    @aimagen = Aimagen.new(params[:aimagen])

    respond_to do |format|
      if @aimagen.save
        format.html { redirect_to @aimagen, notice: 'imagen  creada.' }
        format.json { render json: @aimagen, status: :created, location: @aimagen }
      else
        format.html { render action: "new" }
        format.json { render json: @aimagen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aimagens/1
  # PUT /aimagens/1.json
  def update
    @aimagen = Aimagen.find(params[:id])

    respond_to do |format|
      if @aimagen.update_attributes(params[:aimagen])
        format.html { redirect_to @aimagen, notice: 'imagen actualizada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aimagen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aimagens/1
  # DELETE /aimagens/1.json
  def destroy
    @aimagen = Aimagen.find(params[:id])
    @aimagen.destroy

    respond_to do |format|
      format.html { redirect_to aimagens_url }
      format.json { head :no_content }
    end
  end
end
