class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :description
      t.string :slug
      t.decimal :price

      t.timestamps
    end
  end
end
