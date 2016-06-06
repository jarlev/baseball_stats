class RemoveAccountTypeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :account_type, :string
  end
end
