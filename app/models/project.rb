class Project < ActiveRecord::Base
  attr_accessible :name, :goal

  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :contributions
  has_many :users, :through => :contributions

end
