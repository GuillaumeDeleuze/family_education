class AddDoneToRewards < ActiveRecord::Migration[5.2]
  def change
    add_column :rewards, :done, :boolean, default: false
  end
end
