class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :uniform_number
      t.string :gender
      t.integer :team_id
      t.integer :height_ft
      t.integer :height_in
      t.integer :weight
      t.string :position
      t.string :bats
      t.string :throws

      t.timestamps null: false
    end
  end
end
