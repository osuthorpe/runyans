class AddHomepageToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :homepage, :boolean, default: false
  end
end
