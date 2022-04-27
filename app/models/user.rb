class User < ApplicationRecord
  has_many :answer

  validates :name,:email,:password, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }

end
