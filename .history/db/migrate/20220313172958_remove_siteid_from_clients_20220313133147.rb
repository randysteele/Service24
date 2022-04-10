class RemoveSiteidFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :client, :sites
  end
end
