class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
    add_index :services, :name, unique: true
  end
end
