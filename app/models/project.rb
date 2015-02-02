class Project < ActiveRecord::Base
  has_many :worms
  validates :name, presence: true
  
  
end
