class Worm < ActiveRecord::Base
  belongs_to :project
  has_many :grants
  has_many :granted_projects, through: :grants, source: :project
  
  validates :project_id, presence: { message: "Pozor" }
end
