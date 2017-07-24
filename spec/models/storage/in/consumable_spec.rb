require 'rails_helper'

RSpec.describe Storage::In::Consumable, type: :model do
  it_behaves_like 'Storage possessor'
  it_behaves_like 'Storage object attributes'
  it { should validate_presence_of(:pack_form) }
end
