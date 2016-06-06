class SeasonsController < ApplicationController

  def index
    @regular_seasons = RegularSeason.all
  end

  def new
    @regular_season = RegularSeason.new
  end

  def show
    @regular_season = RegularSeason.find params[:id]
  end

  def create
  	@regular_season = RegularSeason.new(regular_season_params)
  	# @league = League.find params[:id]
        if @regular_season.save!
          flash[:success] = "Season created successfully"
          @id = @regular_season.id
          redirect_to action: :index
        else
          flash[:error] = @regular_season.errors.full_messages
          redirect_to new_season_path
        end 
  	# load_and_render_show
  end

  def new_post_season
    @regular_season = RegularSeason.find params[:id]
  end

  def show_post_season
    @post_season = PostSeason.find params[:id]
  end

  def create_post_season
  	@post_season = PostSeason.new(post_season_params)
  	@regular_season = RegularSeason.find params[:id]
      redirect_to action: :show
  	# load_and_render_show
  end

  def create_schedule
  	@schedule = Schedule.new(schedule_params)
  	@regular_season = RegularSeason.find params[:id]
  	@post_season = PostSeason.find params[:id]
  	# load_and_render_show
  end


private

  def regular_season_params
      params.require(:regular_season).permit(:season_name, :length, :league_id, :start_date, :end_date)
  end

  def post_season_params
      params.require(:post_season).permit(:post_season_name, :length, :season_id, :start_date, :end_date)
  end

  def schedule_params

  end

end
