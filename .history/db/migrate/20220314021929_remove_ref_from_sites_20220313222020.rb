class RemoveRefFromSites < ActiveRecord::Migration[6.1]
  def change
    remove_reference :sites, :client, foreign_key: true, index: false
  end
end
