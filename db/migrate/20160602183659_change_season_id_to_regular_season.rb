class ChangeSeasonIdToRegularSeason < ActiveRecord::Migration
  def change
  	rename_column :post_seasons, :season_id, :post_season_id
  end
end
