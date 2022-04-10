class AddCityStateAndZipToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :city, :string
    add_column :clients, :state, :string
    add_column :clients, :zip, :string
  end
end
