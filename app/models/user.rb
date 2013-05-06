class User < ActiveRecord::Base
  attr_accessible :name

  has_many :contributions
  has_many :projects, :through => :contributions

end
