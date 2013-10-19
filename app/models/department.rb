class Department < ActiveRecord::Base
  
  has_many :user_departments
  has_many :users, through: :user_departments

  has_many :jobs

  attr_accessible :name

  default_scope order: 'name ASC'

end
