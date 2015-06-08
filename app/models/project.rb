class Project < ActiveRecord::Base
  has_many :worms
  validates :name, presence: true
  
  has_many :grants
  has_many :granted_worms, through: :grants, source: :worm
end
