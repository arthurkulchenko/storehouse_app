require 'rails_helper'

RSpec.describe Storage::SupplyApplication, type: :model do
  it_behaves_like 'Storage facility'
  it { should define_enum_for(:status) }
end