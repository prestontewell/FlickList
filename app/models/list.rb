class List < ApplicationRecord
  has_many :titles, through: :list_titles
  has_many :comments
  

end
