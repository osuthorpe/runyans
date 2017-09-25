class AddStatusToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :status, :integer, null: false, default: 0
    add_column :teams, :locale, :integer, null: false, default: 0
  end
end
