class Actor < ActiveRecord::Base
  has_many :auditions
  has_many :roles, through: :auditions
end