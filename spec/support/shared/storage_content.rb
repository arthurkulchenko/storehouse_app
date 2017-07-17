shared_examples_for "Storage Content" do
  it { should validate_presence_of :possessor_type }
  it { should validate_presence_of :possessor_id }
  it { should belong_to :possessor }
end