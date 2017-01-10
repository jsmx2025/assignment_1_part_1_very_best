class AddLocationLatitudeToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :location_latitude, :float
  end
end
