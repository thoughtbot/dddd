class School < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :registrations

  def self.names
    order('name asc').map(&:name)
  end
end
