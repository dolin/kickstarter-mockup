class User < ActiveRecord::Base
  attr_accessible :name

  has_many :contributions
  has_many :projects, :through => :contributions

  def projects_contributed_to
    self.contributions.collect do |contribution|
      contribution.project_id
    end
  end

end
