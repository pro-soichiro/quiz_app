class Answer < ApplicationRecord
  belongs_to :user
  has_many :answer_details
end
