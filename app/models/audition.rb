class Audition < ActiveRecord::Base
  belongs_to :role
  belongs_to :actor

  def call_back
    update(hired: 1)
  end

  def self.hired
    self.where(hired: true)
  end

  def self.not_hired
    self.where(hired: false)
  end
end