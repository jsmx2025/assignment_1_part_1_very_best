class AddLocationLongitudeToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :location_longitude, :float
  end
end
