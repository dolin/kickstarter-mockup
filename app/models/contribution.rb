class Contribution < ActiveRecord::Base
  attr_accessible :amount, :user_id, :project_id

  belongs_to :project
  belongs_to :user

end
