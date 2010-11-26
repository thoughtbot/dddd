require 'spec_helper'

describe School do
  before { Factory(:school) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end

describe School, ".names" do
  before do
    @bu      = Factory(:school, :name => "Boston University")
    @bc      = Factory(:school, :name => "Boston College")
    @harvard = Factory(:school, :name => "Harvard University")
  end

  it "returns an array of all school names alphabetically" do
    School.names.should == ["Boston College", "Boston University", "Harvard University"]
  end
end
