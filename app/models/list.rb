class List < ApplicationRecord
  has_many :list_titles
  has_many :list_users
  has_many :comments
  # has_many :titles, through: :list_titles
  has_many :users, through: :list_users

  def titles
    list_titles.map{ |list_title| list_title.title } 
  end
  
end
