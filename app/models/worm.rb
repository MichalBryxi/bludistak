class Worm < ActiveRecord::Base
  belongs_to :project
  
  validates :project_id, presence: { message: "fuck" }
end
