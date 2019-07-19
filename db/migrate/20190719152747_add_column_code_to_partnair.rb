class AddColumnCodeToPartnair < ActiveRecord::Migration[5.2]
  def change
    add_column :partnairs, :code, :string
  end
end
