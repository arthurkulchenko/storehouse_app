shared_examples_for 'Storage Basic' do
  it { should belong_to :facility }
  it { should validate_presence_of :facility_id }
end