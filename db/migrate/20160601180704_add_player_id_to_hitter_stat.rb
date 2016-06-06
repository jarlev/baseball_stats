class AddPlayerIdToHitterStat < ActiveRecord::Migration
  def change
    add_column :hitter_stats, :player_id, :integer
  end
end
