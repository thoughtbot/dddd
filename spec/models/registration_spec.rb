require 'spec_helper'

describe Registration do
  subject { Factory(:registration) }

  it { should validate_presence_of(:twitter)     }
  it { should validate_presence_of(:name)        }
  it { should validate_presence_of(:role)        }
  it { should validate_presence_of(:school_name) }

  it { should validate_uniqueness_of(:twitter) }

  it { should belong_to(:school) }

  it { should allow_value("Developer").for(:role) }
  it { should allow_value("Designer"). for(:role) }

  it { should_not allow_value("Recruiter").          for(:role) }
  it { should_not allow_value("Social Media Expert").for(:role) }
end

describe Registration, "#create" do
  before do
    @bob   = Factory(:registration, :school_name => "Holy Cross")
    @dan   = Factory(:registration, :school_name => "Holy Cross")
  end

  it "creates a new school only when name of school is new" do
    School.count == 1
    @bob.school      == @dan.school
    @bob.school.name == "Holy Cross"
  end
end
