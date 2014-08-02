class Register < ActiveRecord::Base

  #attr_accessible :name, :email, :pass
  validates_presence_of :name, :email, :pass
  #validates :pass, :length => {:minimum => 3}
  validates_uniqueness_of :email, :name
  validates_length_of :pass, minimum: 4
end
