class ChangeUserIdToManager < ActiveRecord::Migration
  def change
  	  rename_column :teams, :user_id, :manager_id
  end
end
