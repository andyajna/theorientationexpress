class CreateUserJobs < ActiveRecord::Migration
  def change
    create_table :user_jobs do |t|
      t.references :user
      t.references :job

      t.timestamps
    end
    add_index :user_jobs, :user_id
    add_index :user_jobs, :job_id
  end
end
