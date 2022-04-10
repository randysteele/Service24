class AddClientToSite < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :sites, :clients
  end
end
