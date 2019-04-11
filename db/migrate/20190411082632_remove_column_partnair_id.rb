class RemoveColumnPartnairId < ActiveRecord::Migration[5.2]
  def change
    remove_column :rewards, :partnairs_id
  end
end
