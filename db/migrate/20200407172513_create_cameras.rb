class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :title
      t.string :category
      t.string :description
      t.integer :price_per_day
      t.integer :rating
      t.string :address
      t.string :extras
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
