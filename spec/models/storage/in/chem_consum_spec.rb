require 'rails_helper'

RSpec.describe Storage::In::ChemConsum, type: :model do
  it_behaves_like 'Storage possessor'
  it_behaves_like 'Storage object attributes'
  it { should validate_presence_of(:ph_rate) }  
  it { should validate_presence_of(:additional_info) }
  it { should validate_presence_of(:purpose) }
  it { should validate_presence_of(:pack_form) }
end
