class RemoveWorkOrderFromSites < ActiveRecord::Migration[6.1]
  def change
    remove_column :sites, :workorder_id
  end
end
