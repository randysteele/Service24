class AddStreetAndCityToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :city, :string
    # add_column :client, :state, :string
    # add_column :client, :zip, :string 
  end
end
