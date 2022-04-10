class RemoveReferencesFromSite < ActiveRecord::Migration[6.1]
  def change
    remove_reference :sites, :workorder, foreign_key: true, index: false
  end
end
