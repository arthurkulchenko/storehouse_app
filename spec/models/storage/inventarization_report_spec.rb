require 'rails_helper'

RSpec.describe Storage::InventarizationReport, type: :model do
  it_behaves_like 'Storage facility'
  it { should validate_presence_of(:status) }
  it do 
       should validate_inclusion_of(:status)
       .in_array( ["checked", "done", "not accepted", "hidden"] )
     end
end
