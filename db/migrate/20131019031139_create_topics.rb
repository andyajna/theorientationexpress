class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.date :due_date
      t.string :type
      t.references :job

      t.timestamps
    end
    add_index :topics, :job_id
  end
end
