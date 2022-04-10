class CreateWorkorders < ActiveRecord::Migration[6.1]
  def change
    create_table :workorders do |t|
      t.string :category
      t.string :caller
      t.string :PO
      t.text :work_requested
      t.datetime :schedule_date
      t.datetime :completion_date

      t.timestamps
    end
  end
end
