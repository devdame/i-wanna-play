class Player < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_secure_password

  validates_presence_of :email, :name
end
