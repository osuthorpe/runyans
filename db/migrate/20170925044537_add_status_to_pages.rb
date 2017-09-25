class AddStatusToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :status, :integer, null: false, default: 0
    add_column :pages, :locale, :integer, null: false, default: 0
  end
end
