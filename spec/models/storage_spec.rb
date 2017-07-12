require 'rails_helper'

RSpec.describe Storage, type: :model do
  it { should belong_to :facility }
  it { should validate_presence_of :facility_id }
end
