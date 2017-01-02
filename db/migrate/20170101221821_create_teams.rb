class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :image
      t.text :description
      t.integer :order
      t.string :title

      t.timestamps
    end
  end
end
