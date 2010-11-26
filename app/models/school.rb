class School < ActiveRecord::Base
  def self.names
    order('name asc').map(&:name)
  end
end
