class AddPartnairsToRewards < ActiveRecord::Migration[5.2]
  def change
    add_reference :rewards, :partnairs, foreign_key: true
  end
end
