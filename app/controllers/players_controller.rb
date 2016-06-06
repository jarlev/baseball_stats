class PlayersController < ApplicationController
	before_action :authenticate_user!


  def index
  	@players = Player.all
  end

   def new
  	@player = Player.new
  	@bats = ["left", "right", "switch"]
  	@gender = ["male", "female"]
  	@positions = ["pitcher", "catcher", "first base", "second base", "shortstop", "third base", "outfield", "designated hitter"]
  	@throws = ["left", "right"]
  end

  def show
  	load_show_content
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save!
		flash[:success] = "Team created successfully"
		@id = @player.id
		redirect_to action: :index
	else
		flash[:error] = @player.errors.full_messages
		redirect_to new_team_path
	end
  end

  def edit
  	@player = Player.find params[:id]
  end

  def destroy
  	@player = Player.find params[:id]
  	@player.destroy!
  	redirect_to players_path
  end


  private

  def player_params
  	params.require(:player).permit(:first_name, :last_name, :uniform_number, :team_id, :gender, :position, :birthday, :height_ft, :height_in, :bats, :throws)
  end

  def player_stats_params
  end

  def load_and_render_show
  	load_show_content
  	redirect_to action: :show
  end

  def load_show_content
  	@player = Player.find params[:id]
  	@hitter_stats = @player.hitter_stat
  end

end
