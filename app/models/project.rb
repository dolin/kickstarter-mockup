class Project < ActiveRecord::Base
  attr_accessible :name, :goal, :user_id

  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :contributions
  has_many :users, :through => :contributions

  def total
    self.contributions.inject(0) do |total, contribution|
      total + contribution.amount
    end
  end

  def goal_hit?
    total >= self.goal
  end

end
