class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.string :title, null: false, default: ""
      t.string :image
      t.timestamps
    end
  end
end
