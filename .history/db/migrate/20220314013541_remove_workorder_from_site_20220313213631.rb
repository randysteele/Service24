class RemoveWorkorderFromSite < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :sites, :workorders
  end
end
