class AddCityStateZipToLeague < ActiveRecord::Migration
  def change
    add_column :leagues, :city, :string
    add_column :leagues, :state, :string
    add_column :leagues, :zip, :string
  end
end
