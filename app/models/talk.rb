class Talk < ActiveRecord::Base
  validates_presence_of :name, :abstract, :speaker_name, :speaker_bio

  has_many :resources
end
