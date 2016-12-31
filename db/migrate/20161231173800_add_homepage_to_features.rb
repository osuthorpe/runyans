class AddHomepageToFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :features, :homepage, :boolean, default: false
  end
end
