class Api::TeamsController < ApplicationController
  before_action :set_api_team, only: [:show, :edit, :update, :destroy]

  # GET /api/teams
  # GET /api/teams.json
  def index
    @api_teams = Team.all
    render json: @api_teams
  end

  # GET /api/teams/1
  # GET /api/teams/1.json
  def show
  end

  # GET /api/teams/new
  def new
    @api_team = Api::Team.new
    render json: @api_team
  end

  # GET /api/teams/1/edit
  def edit
  end

  # POST /api/teams
  # POST /api/teams.json
  def create
    @api_team = Api::Team.new(api_team_params)

    respond_to do |format|
      if @api_team.save
        format.html { redirect_to @api_team, notice: 'Team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_team }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/teams/1
  # PATCH/PUT /api/teams/1.json
  def update
    respond_to do |format|
      if @api_team.update(api_team_params)
        format.html { redirect_to @api_team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/teams/1
  # DELETE /api/teams/1.json
  def destroy
    @api_team.destroy
    respond_to do |format|
      format.html { redirect_to api_teams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_team
      @api_team = Api::Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_team_params
      params[:api_team]
    end
end
