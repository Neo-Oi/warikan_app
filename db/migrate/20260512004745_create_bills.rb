class CreateBills < ActiveRecord::Migration[8.1]
  def change
    create_table :bills do |t|
      t.integer :amount
      t.integer :people
      t.integer :result

      t.timestamps
    end
  end
end
