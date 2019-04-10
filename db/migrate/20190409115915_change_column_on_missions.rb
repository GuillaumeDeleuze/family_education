class ChangeColumnOnMissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :done
    add_column :missions, :status, :integer, default: 0
  end
end
