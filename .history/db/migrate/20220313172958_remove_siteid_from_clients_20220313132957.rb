class RemoveSiteidFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :site, :foreign_key
  end
end
