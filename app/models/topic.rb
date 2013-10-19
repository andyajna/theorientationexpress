class Topic < ActiveRecord::Base
  belongs_to :job
  has_many :questions
  attr_accessible :due_date, :name, :type
end
