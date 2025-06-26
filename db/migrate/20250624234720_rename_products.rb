class RenameProducts < ActiveRecord::Migration[8.0]
  def change
    rename_table :products, :photos
  end
end
