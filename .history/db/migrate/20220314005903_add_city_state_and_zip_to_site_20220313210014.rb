class AddCityStateAndZipToSite < ActiveRecord::Migration[6.1]
  def change
    add_column :site, :city, :string
    add_column :site, :state, :string
    add_column :site, :zip, :string
  end
end
