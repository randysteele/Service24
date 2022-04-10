class AddClientToSite < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :sites, :primary_key
  end
end
