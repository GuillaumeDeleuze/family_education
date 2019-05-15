class AddRepetitionToMission < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :repition, :boolean, default: false
  end
end
