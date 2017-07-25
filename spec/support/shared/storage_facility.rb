shared_examples_for 'Storage facility' do
  it { should belong_to :facility }
  it { should validate_presence_of :facility_id }
  [:consumable, :chem_consum, :equipment, :inventory].each do |m|
    # it { should have_many m }
    # it { should accept_nested_attributes_for m }
  end
end