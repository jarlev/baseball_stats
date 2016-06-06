class GamesController < ApplicationController
  def index
  	@games = Game.all
  end

  def new
  	home_team_id
      away_team_id
      @inning_count = [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
      home_team_run
      away_team_run
      home_team_hit
      away_team_hit
      home_team_error
      away_team_error
      winning_team
      losing_team
      date
      game_type = ["regular season", "quarter-final", "semi-final", "championship"]
  end

  def record_game
  	update
  end

  def delete_game
  end

  def show
  	@game = Game.find params[:id]
  end

end
