class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :child, :boolean, default: false
    add_column :users, :point, :integer
    add_column :users, :birth_date, :date
  end
end
