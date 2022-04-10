class AddCityStateAndZipToSite < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :city, :string
    add_column :sites, :state, :string
    add_column :sites, :zip, :string
  end
end
