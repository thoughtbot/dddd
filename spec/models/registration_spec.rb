require 'spec_helper'

describe Registration do
  subject { Factory(:registration) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:role) }

  it "validates presence of school name" do
    subject.school_name = ""
    subject.save
    subject.errors[:school_name].should == ["can't be blank"]
  end

  it { should belong_to(:school) }

  it { should allow_value("Developer").for(:role) }
  it { should allow_value("Designer"). for(:role) }

  it { should_not allow_value("Recruiter").          for(:role) }
  it { should_not allow_value("Social Media Expert").for(:role) }
end

describe Registration, "#twitter" do
  context "when blank" do
    subject { Factory(:registration, :twitter => "") }
    it { should be_valid }
  end

  context "when present" do
    subject { Factory(:registration, :twitter => "Croaky") }
    it { should validate_uniqueness_of(:twitter) }
  end
end

describe Registration, "#create" do
  before do
    @bob = Factory(:registration, :school_name => "Holy Cross")
    @dan = Factory(:registration, :school_name => "Holy Cross")
  end

  it "creates a new school only when name of school is new" do
    School.count == 1
    @bob.school      == @dan.school
    @bob.school.name == "Holy Cross"
  end
end

describe Registration, "#school_name" do
  before do
    @dan = Factory(:registration, :school_name => "Holy Cross")
  end

  it "delegates to school name" do
    @dan.school_name == "Holy Cross"
  end
end

describe Registration, ".developers" do
  before do
    @nick = Factory(:registration, :role => "Developer", :created_at => 2.weeks.ago)
    @dan  = Factory(:registration, :role => "Developer")
    @phil = Factory(:registration, :role => "Designer")
  end

  it "finds only developers by most recent" do
    Registration.developers.should == [@dan, @nick]
  end
end

describe Registration, ".designers" do
  before do
    @mazz = Factory(:registration, :role => "Designer", :created_at => 2.weeks.ago)
    @phil = Factory(:registration, :role => "Designer")
    @dan  = Factory(:registration, :role => "Developer")
  end

  it "finds only designers by most recent" do
    Registration.designers.should == [@phil, @mazz]
  end
end
