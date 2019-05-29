class HandoutsController < ApplicationController
  before_action :set_handout, only: [:show, :edit, :update, :destroy]

  # GET /handouts
  # GET /handouts.json
  def index
    @handouts = Handout.all
  end

  # GET /handouts/1
  # GET /handouts/1.json
  def show
  end

  # GET /handouts/new
  def new
    @handout = Handout.new
  end

  # GET /handouts/1/edit
  def edit
  end

  # POST /handouts
  # POST /handouts.json
  def create
    @handout = Handout.new(handout_params)

    respond_to do |format|
      if @handout.save
        format.html { redirect_to @handout, notice: 'Handout was successfully created.' }
        format.json { render :show, status: :created, location: @handout }
      else
        format.html { render :new }
        format.json { render json: @handout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handouts/1
  # PATCH/PUT /handouts/1.json
  def update
    respond_to do |format|
      if @handout.update(handout_params)
        format.html { redirect_to @handout, notice: 'Handout was successfully updated.' }
        format.json { render :show, status: :ok, location: @handout }
      else
        format.html { render :edit }
        format.json { render json: @handout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handouts/1
  # DELETE /handouts/1.json
  def destroy
    @handout.destroy
    respond_to do |format|
      format.html { redirect_to handouts_url, notice: 'Handout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handout
      @handout = Handout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handout_params
      params.require(:handout).permit(:url, :trainer_id, :session_id)
    end
end
