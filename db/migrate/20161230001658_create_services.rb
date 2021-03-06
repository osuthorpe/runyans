class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :image, null: false
      t.integer :order, null: false

      t.timestamps
    end
  end
end
