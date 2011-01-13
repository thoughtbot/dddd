require 'spec_helper'

describe Startup do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end

describe Startup, ".alphabetical" do
  before do
    @twitter    = Factory(:startup, :name => "Twitter")
    @foursquare = Factory(:startup, :name => "Foursquare")
  end

  it "finds all startups, sorted alphaetically" do
    Startup.alphabetical.should == [@foursquare, @twitter]
  end
end
