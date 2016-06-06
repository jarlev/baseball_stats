class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :roster_count
      t.integer :league_id
      t.boolean :baseball
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
