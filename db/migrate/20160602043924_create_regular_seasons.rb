class CreateRegularSeasons < ActiveRecord::Migration
  def change
    create_table :regular_seasons do |t|
      t.integer :league_id
      t.integer :length
      t.integer :team_count
      t.date :start_date
      t.date :end_date
      t.string :season_name

      t.timestamps null: false
    end
  end
end
