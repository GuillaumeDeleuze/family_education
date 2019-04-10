class AddDoneToMissions < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :done, :boolean, default: false
  end
end
