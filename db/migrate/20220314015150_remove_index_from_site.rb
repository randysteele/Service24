class RemoveIndexFromSite < ActiveRecord::Migration[6.1]
  def change
    remove_index :sites, :workorder_id
  end
end
