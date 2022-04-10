class CreateTechnicians < ActiveRecord::Migration[6.1]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :tech_id
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
