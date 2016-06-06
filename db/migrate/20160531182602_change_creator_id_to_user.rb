class ChangeCreatorIdToUser < ActiveRecord::Migration
  def change
  	rename_column :leagues, :creator_id, :user_id
  end
end
