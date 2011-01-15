class Resource < ActiveRecord::Base
  validates_presence_of :name, :url, :description

  belongs_to :talk
end
