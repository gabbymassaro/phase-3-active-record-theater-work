class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:location)
  end

  def lead
    audition = auditions.find_by(hired: true)
    audition || 'no actor has been hired for this role'
  end

  def understudy
    audition = auditions.where(hired: true).offset(1).first
    audition || 'no actor has been hired for understudy for this role'
  end
end