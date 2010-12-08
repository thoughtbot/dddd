require 'spec_helper'

describe TwitterHelper, "#twitter_avatar" do
  it "converts given company name into twitter link and avatar" do
    avatar = twitter_avatar("performable", 73)
    Nokogiri::HTML.parse(avatar).at("a")['href'].should == 'http://twitter.com/performable'
    Nokogiri::HTML.parse(avatar).at("img")['src'].should == 'http://avatar.statusok.com/performable?size=73'
  end

  it "is blank when screenname is blank" do
    twitter_avatar("", 73).should == ""
  end
end
