class AddLastStatusCheckToServices < ActiveRecord::Migration[5.1]
  def up
    add_column :services, :last_status_check, :boolean
  end

  def down
    remove_column :services, :last_status_check
  end
end
