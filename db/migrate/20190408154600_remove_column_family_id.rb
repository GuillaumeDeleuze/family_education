class RemoveColumnFamilyId < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :family_id
    remove_column :rewards, :family_id
    remove_column :partnairs, :reward_id
  end
end
