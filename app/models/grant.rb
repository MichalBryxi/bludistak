class Grant < ActiveRecord::Base
  belongs_to :project
  belongs_to :worm
end
