class Startup < ActiveRecord::Base
  validates_presence_of :name, :description

  def self.alphabetical
    order("name asc")
  end
end
