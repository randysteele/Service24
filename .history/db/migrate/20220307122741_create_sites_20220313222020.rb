class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :number
      t.integer :phone
      t.string :address
      t.string :acct_mgr
      t.string :branch_mgr
      t.references :workorder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
