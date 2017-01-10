class AddLocationFormattedAddressToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :location_formatted_address, :string
  end
end
