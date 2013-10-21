class Job < ActiveRecord::Base
  belongs_to :department

  has_many :topics
  attr_accessible :name, :department_id, :user_ids

  default_scope order: 'name ASC'

  has_many :user_jobs
  has_many :users, through: :user_jobs

 

end
