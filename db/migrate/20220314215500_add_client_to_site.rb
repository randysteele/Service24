class AddClientToSite < ActiveRecord::Migration[6.1]
  def change
    add_reference :sites, :client, null: false, foreign_key: true
  end
end
