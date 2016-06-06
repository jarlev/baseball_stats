class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.integer :league_id
      t.boolean :baseball
      t.integer :max_player
      t.integer :season_length
      t.integer :creator_id
      t.integer :team_count

      t.timestamps null: false
    end
  end
end
