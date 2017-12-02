class AddLastStatusCheckToStatusChecks < ActiveRecord::Migration[5.1]
  def up
    add_column :status_checks, :last_status_check, :boolean
  end

  def down
    remove_column :status_checks, :last_status_check
  end
end
