class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :billing_address
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
