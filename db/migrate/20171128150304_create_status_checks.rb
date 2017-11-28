class CreateStatusChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :status_checks do |t|
      t.integer :service_id
      t.string :name
      t.string :selector
      t.string :expected_value

      t.timestamps
    end
    add_index :status_checks, :service_id
  end
end
