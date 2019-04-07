class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :list_users
  has_many :lists, through: :list_users
  has_many :comments

end
