class AddClientSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :client_id, :primary_key
  end
end
