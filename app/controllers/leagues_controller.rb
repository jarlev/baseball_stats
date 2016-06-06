class LeaguesController < ApplicationController
	before_action :authenticate_user!


  def index
  	@leagues = League.all
  end

  def new
  	@league = League.new
  	@max_players = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  	@team_count = [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  	@season_length = [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  	@states = Array[ ["AK", "Alaska"], 
                ["AL", "Alabama"], 
                ["AR", "Arkansas"], 
                ["AS", "American Samoa"], 
                ["AZ", "Arizona"], 
                ["CA", "California"], 
                ["CO", "Colorado"], 
                ["CT", "Connecticut"], 
                ["DC", "District of Columbia"], 
                ["DE", "Delaware"], 
                ["FL", "Florida"], 
                ["GA", "Georgia"], 
                ["GU", "Guam"], 
                ["HI", "Hawaii"], 
                ["IA", "Iowa"], 
                ["ID", "Idaho"], 
                ["IL", "Illinois"], 
                ["IN", "Indiana"], 
                ["KS", "Kansas"], 
                ["KY", "Kentucky"], 
                ["LA", "Louisiana"], 
                ["MA", "Massachusetts"], 
                ["MD", "Maryland"], 
                ["ME", "Maine"], 
                ["MI", "Michigan"], 
                ["MN", "Minnesota"], 
                ["MO", "Missouri"], 
                ["MS", "Mississippi"], 
                ["MT", "Montana"], 
                ["NC", "North Carolina"], 
                ["ND", "North Dakota"], 
                ["NE", "Nebraska"], 
                ["NH", "New Hampshire"], 
                ["NJ", "New Jersey"], 
                ["NM", "New Mexico"], 
                ["NV", "Nevada"], 
                ["NY", "New York"], 
                ["OH", "Ohio"], 
                ["OK", "Oklahoma"], 
                ["OR", "Oregon"], 
                ["PA", "Pennsylvania"], 
                ["PR", "Puerto Rico"], 
                ["RI", "Rhode Island"], 
                ["SC", "South Carolina"], 
                ["SD", "South Dakota"], 
                ["TN", "Tennessee"], 
                ["TX", "Texas"], 
                ["UT", "Utah"], 
                ["VA", "Virginia"], 
                ["VI", "Virgin Islands"], 
                ["VT", "Vermont"], 
                ["WA", "Washington"], 
                ["WI", "Wisconsin"], 
                ["WV", "West Virginia"], 
                ["WY", "Wyoming"] ]
  end

  def show
  	@league = League.find params[:id]
  	@teams = @league.teams
  	@regular_seasons = @league.regular_seasons
  end

  def create
  	@league = League.new(league_params)
  	@league.commissioner = current_user
	if @league.save!
		flash[:success] = "Team created successfully"
		@id = @league.id
		redirect_to action: :index
	else
		flash[:error] = @league.errors.full_messages
		redirect_to new_league_path
	end	
  end

  def edit
  	@league = Team.find params[:id]
  end

  def destroy
  	@league = Team.find params[:id]
  	@league.destroy!
  	redirect_to leagues_path
  end


  private

  def league_params
  	params.require(:league).permit(:league_name, :baseball, :team_count, :max_player, :season_length, :city, :state, :zip)
  end

end
