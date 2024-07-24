class Role < ActiveRecord::Base
  has_many :auditions
  has_many :actors, through: :auditions

  def locations
    auditions.pluck(:location)
  end

  def lead
    audition = auditions.find_by(hired: true)
    audition || 'no actor has been hired for this role'
  end

  def understudy
    audition = auditions.where(hired: true).second
    audition || 'no actor has been hired for understudy for this role'
  end

  def self.most_auditions
    most_auditions = Audition.group(:role_id).count.max_by { |_, count| count }.first
    find(most_auditions)
  end

  def self.all_actors
    Audition.group(:actor_id).uniq
  end
end
