class Registration < ActiveRecord::Base
  validates_presence_of   :twitter, :name, :school, :why, :role
  validates_uniqueness_of :twitter
  validates_inclusion_of  :role, :in => %w(Designer Developer)
end
