class RemoveColumnUserId < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rewards_id
    remove_column :users, :missions_id
  end
end
