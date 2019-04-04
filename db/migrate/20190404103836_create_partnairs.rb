class CreatePartnairs < ActiveRecord::Migration[5.2]
  def change
    create_table :partnairs do |t|
      t.string :name
      t.string :description
      t.references :reward, foreign_key: true

      t.timestamps
    end
  end
end
