class AddSiteToWorkorder < ActiveRecord::Migration[6.1]
  def change
    add_reference :workorders, :site, null: false, foreign_key: true
  end
end
