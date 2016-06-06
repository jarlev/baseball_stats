class ChangeUserIdToCommissioner < ActiveRecord::Migration
   def change
  	rename_column :leagues, :user_id, :commissioner_id
   end
end
