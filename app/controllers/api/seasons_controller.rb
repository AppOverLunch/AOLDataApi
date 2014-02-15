class Api::SeasonsController < ApplicationController

  def index
    @api_seasons = Api::Season
    render json: @api_seasons
  end

  def show
  end

  def new
    @api_season = Api::Season.new
  end

  # GET /api/stadia/1/edit
  def edit
  end

  # POST /api/stadia
  # POST /api/stadia.json
  def create
    @api_season = Api::Season.new(api_season_params)

    respond_to do |format|
      if @api_season.save
        format.html { redirect_to @api_season, notice: 'Season was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_season }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/stadia/1
  # PATCH/PUT /api/stadia/1.json
  def update
    respond_to do |format|
      if @api_season.update(api_season_params)
        format.html { redirect_to @api_season, notice: 'Season was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/stadia/1
  # DELETE /api/stadia/1.json
  def destroy
    @api_season.destroy
    respond_to do |format|
      format.html { redirect_to api_stadia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_season
      @api_season = Api::Season.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_season_params
      params[:api_season]
    end
end
