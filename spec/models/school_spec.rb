require 'spec_helper'

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
