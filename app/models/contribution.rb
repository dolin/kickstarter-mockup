class Contribution < ActiveRecord::Base
  attr_accessible :amount, :contributor_id, :project_id

  belongs_to :project
  belongs_to :contributor, class_name: "User", foreign_key: "contributor_id"
end
