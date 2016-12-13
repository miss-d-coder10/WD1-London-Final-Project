class AddLatituteToVineyards < ActiveRecord::Migration[5.0]
  def change
    add_column :vineyards, :latitute, :float
    add_column :vineyards, :longitude, :float
  end
end
