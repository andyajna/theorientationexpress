class UserJob < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  # attr_accessible :title, :body
end
