class Registration < ActiveRecord::Base
  validates_presence_of   :name, :role, :school_name
  validates_uniqueness_of :twitter, :if => :twitter_present?
  validates_inclusion_of  :role,    :in => %w(Designer Developer)

  belongs_to    :school, :counter_cache => true
  attr_writer   :school_name
  before_create :find_or_create_school

  def school_name
    @school_name || school.try(:name)
  end

  def self.developers
    where(:role => "Developer").order("created_at desc")
  end

  def self.designers
    where(:role => "Designer").order("created_at desc")
  end

  def self.stats
    all.to_csv(:only => [:name, :role, :twitter], :methods => [:school_name])
  end

  private

  def find_or_create_school
    self.school = School.find_or_create_by_name(school_name)
  end

  def twitter_present?
    twitter.present?
  end
end
