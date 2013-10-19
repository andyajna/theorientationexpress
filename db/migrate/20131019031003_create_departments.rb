class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :departments, :user_id
  end
end
