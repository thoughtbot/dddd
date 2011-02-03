class School < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :registrations

  def self.names
    alphabetical.map(&:name)
  end

  def self.alphabetical
    order('name asc')
  end

  def self.stats
    order('registrations_count desc').to_csv(:only => [:name, :registrations_count])
  end
end
