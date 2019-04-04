class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :name
      t.integer :point
      t.date :start_at
      t.date :end_at
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
