class AddFeaturedToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :featured, :boolean, default: false
    add_column :categories, :navigation, :boolean, default: false
  end
end
