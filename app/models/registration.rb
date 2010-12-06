class Registration < ActiveRecord::Base
  validates_presence_of   :name, :role, :school_name
  validates_uniqueness_of :twitter, :if => :twitter_present?
  validates_inclusion_of  :role,    :in => %w(Designer Developer)

  belongs_to    :school
  attr_accessor :school_name
  before_create :find_or_create_school

  private

  def find_or_create_school
    self.school = School.find_or_create_by_name(school_name)
  end

  def twitter_present?
    twitter.present?
  end
end
