class Actor < ActiveRecord::Base
  has_many :auditions
  has_many :roles, through: :auditions

  def self.most_roles
    most_roles = Audition.group(:actor_id).count.max_by { |_, count| count }.first
    find(most_roles)
  end

  def self.hired_roles
    hired_role_ids = Audition.where(hired: true).pluck(:role_id)
    Role.where(id: hired_role_ids)
  end
end