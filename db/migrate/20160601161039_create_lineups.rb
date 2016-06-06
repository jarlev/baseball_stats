class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.integer :team_id
      t.integer :player_id
      t.string :name
      t.string :batting_order
      t.string :player_position

      t.timestamps null: false
    end
  end
end
