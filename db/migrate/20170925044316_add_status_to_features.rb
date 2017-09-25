class AddStatusToFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :features, :status, :integer, null: false, default: 0
    add_column :features, :locale, :integer, null: false, default: 0
  end
end
