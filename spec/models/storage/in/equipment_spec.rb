require 'rails_helper'

RSpec.describe Storage::In::Equipment, type: :model do
  it_behaves_like 'Storage possessor'
  it_behaves_like 'Storage object attributes'
  it { should validate_presence_of(:owner) }
  it { should validate_presence_of(:kind) }
end
