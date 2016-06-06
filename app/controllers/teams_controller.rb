class TeamsController < ApplicationController
	before_action :authenticate_user!


  def index
  	@teams = Team.all
  end

   def new
  	@team = Team.new
  	@leagues = League.all
  	@roster_count = [10,11,12,13,14,15,16,17,18]
  end

  def show
  	load_show_content
  end

  def create
  	@team = Team.new(team_params)
  	@team.manager = current_user
  	if @team.save
		flash[:success] = "Team created successfully"
		@id = @team.id
		redirect_to action: :index
	else
		flash[:error] = @team.errors.full_messages
		redirect_to new_team_path
	end
  end

  def edit
  	@team = Team.find params[:id]
  end

  def destroy
  	@team = Team.find params[:id]
  	@team.destroy!
  	redirect_to teams_path
  end

  def create_lineup
  	@lineup = Lineup.new(lineup_params)
  	@team = Team.find params[:id]
  	@lineup.user = current_user
  	@lineup.update(user: current_user, team: @team)
  end

  def edit_lineup
  end

  def delete_lineup
  	@lineup = Lineup.find params[:lineup]
  	@lineup.destroy!
  end

  private

  def team_params
  	params.require(:team).permit(:team_name, :baseball, :roster_count, :league_id)
  end

  def lineup_params
  end

  def load_and_render_show
  	load_show_content
  	redirect_to action: :show
  end

  def load_show_content
  	@team = Team.find params[:id]
  	@lineups = @team.lineups
  	@players = @team.players
  end

end
