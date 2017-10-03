class AddStatusToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :status, :integer, null: false, default: 0
    add_column :services, :locale, :integer, null: false, default: 0
  end
end
