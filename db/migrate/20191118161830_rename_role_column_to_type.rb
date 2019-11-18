class RenameRoleColumnToType < ActiveRecord::Migration[5.2]
  def change
    rename_column :roles, :role, :category
  end
end
