class Question < ApplicationRecord
  belongs_to :category
  has_many :choices
  has_many :answer_details
end
