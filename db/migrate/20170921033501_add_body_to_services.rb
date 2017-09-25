class AddBodyToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :body, :text
  end
end
