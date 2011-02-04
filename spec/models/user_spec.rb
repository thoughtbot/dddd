require 'spec_helper'

describe User, ".partiers" do
  before do
    @dan  = Factory(:user, :partying => true, :created_at => 5.minutes.ago)
    @nick = Factory(:user, :partying => true, :created_at => 2.seconds.ago)
    @phil = Factory(:user, :partying => false)
  end

  it "finds only partiers alphabetically" do
    User.partiers.should == [@nick, @dan]
  end
end

describe User, ".bostonians" do
  before do
    @dan  = Factory(:user, :partying => false, :created_at => 5.minutes.ago)
    @nick = Factory(:user, :partying => false, :created_at => 2.seconds.ago)
    @phil = Factory(:user, :partying => true)
  end

  it "finds only non-partiers alphabetically" do
    User.bostonians.should == [@nick, @dan]
  end
end
