class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :vineyards, :latitute, :latitude
  end
end
