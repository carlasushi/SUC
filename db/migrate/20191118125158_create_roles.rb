class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :role
      t.references :home, foreign_key: true


      t.timestamps
    end
  end
end
