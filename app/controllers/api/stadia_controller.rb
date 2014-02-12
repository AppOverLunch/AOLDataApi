class Api::StadiaController < ApplicationController
  before_action :set_api_stadium, only: [:show, :edit, :update, :destroy]

  # GET /api/stadia
  # GET /api/stadia.json
  def index
    @api_stadia = Api::Stadium.all
    render json: @api_stadia
  end

  # GET /api/stadia/1
  # GET /api/stadia/1.json
  def show
  end

  # GET /api/stadia/new
  def new
    @api_stadium = Api::Stadium.new
  end

  # GET /api/stadia/1/edit
  def edit
  end

  # POST /api/stadia
  # POST /api/stadia.json
  def create
    @api_stadium = Api::Stadium.new(api_stadium_params)

    respond_to do |format|
      if @api_stadium.save
        format.html { redirect_to @api_stadium, notice: 'Stadium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_stadium }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/stadia/1
  # PATCH/PUT /api/stadia/1.json
  def update
    respond_to do |format|
      if @api_stadium.update(api_stadium_params)
        format.html { redirect_to @api_stadium, notice: 'Stadium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/stadia/1
  # DELETE /api/stadia/1.json
  def destroy
    @api_stadium.destroy
    respond_to do |format|
      format.html { redirect_to api_stadia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_stadium
      @api_stadium = Api::Stadium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_stadium_params
      params[:api_stadium]
    end
end
