require 'spec_helper'

describe Talk do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:abstract) }
  it { should validate_presence_of(:speaker_name) }
  it { should validate_presence_of(:speaker_bio) }

  it { should have_many(:resources) }
end

describe Talk, "#slug" do
  subject { Factory(:talk, :name => "Why Work at a Startup?") }

  it "is a lowercase identifier" do
    subject.slug.should == "why-work-at-a-startup"
  end
end

describe Talk, ".chronological" do
  before do
    @one_pm = Factory(:talk, :time => DateTime.new(2011, 2, 5, 13, 0, 0))
    @ten_am = Factory(:talk, :time => DateTime.new(2011, 2, 5, 10, 0, 0))
  end

  it "finds all talks, sorted chronologically" do
    Talk.chronological.should == [@ten_am, @one_pm]
  end
end
