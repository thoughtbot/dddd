require 'spec_helper'

describe Talk do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:abstract) }
  it { should validate_presence_of(:speaker_name) }
  it { should validate_presence_of(:speaker_bio) }

  it { should have_many(:resources) }
end
