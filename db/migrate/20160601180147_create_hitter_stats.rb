class CreateHitterStats < ActiveRecord::Migration
  def change
    create_table :hitter_stats do |t|
      t.integer :at_bat
      t.integer :plate_appearance
      t.integer :total_hit
      t.integer :single
      t.integer :double
      t.integer :triple
      t.integer :home_run
      t.integer :run
      t.integer :rbi
      t.integer :steal
      t.integer :walk
      t.integer :hit_by_pitch
      t.integer :strikeout
      t.integer :lineout
      t.integer :popout
      t.integer :flyout
      t.integer :groundout
      t.integer :sacrifice_out
      t.integer :base_on_error

      t.timestamps null: false
    end
  end
end
