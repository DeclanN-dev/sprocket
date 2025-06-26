class AddDesc < ActiveRecord::Migration[8.0]
  def change
    add_column :photos, :desc, :text
  end
end
