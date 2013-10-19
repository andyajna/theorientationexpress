class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :department

      t.timestamps
    end
    add_index :jobs, :department_id
  end
end
