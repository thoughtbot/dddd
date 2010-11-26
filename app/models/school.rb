class School < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  def self.names
    order('name asc').map(&:name)
  end
end
