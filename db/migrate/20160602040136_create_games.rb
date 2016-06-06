class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :inning_count
      t.integer :home_team_run
      t.integer :away_team_run
      t.integer :home_team_hit
      t.integer :away_team_hit
      t.integer :home_team_error
      t.integer :away_team_error
      t.string :winning_team
      t.string :losing_team
      t.date :date
      t.string :game_type

      t.timestamps null: false
    end
  end
end
