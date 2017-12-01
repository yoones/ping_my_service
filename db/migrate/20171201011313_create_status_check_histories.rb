class CreateStatusCheckHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :status_check_histories do |t|
      t.integer :status_check_id
      t.boolean :success

      t.timestamps
    end
  end
end
