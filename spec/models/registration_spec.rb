require 'spec_helper'

describe Registration do
  subject { Factory(:registration) }

  it { should validate_presence_of(:twitter) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:school) }
  it { should validate_presence_of(:why) }
  it { should validate_presence_of(:role) }

  it { should validate_uniqueness_of(:twitter) }
end
