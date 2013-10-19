class Question < ActiveRecord::Base
  belongs_to :topic
  has_many :answers
  attr_accessible :question_text
end
