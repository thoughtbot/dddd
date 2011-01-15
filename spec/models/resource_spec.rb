require 'spec_helper'

describe Resource do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:description) }

  it { should belong_to(:talk) }
end
