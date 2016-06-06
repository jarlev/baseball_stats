class CreatePostSeasons < ActiveRecord::Migration
  def change
    create_table :post_seasons do |t|
      t.integer :season_id
      t.integer :length
      t.integer :team_count
      t.date :start_date
      t.date :end_date
      t.string :post_season_name

      t.timestamps null: false
    end
  end
end
