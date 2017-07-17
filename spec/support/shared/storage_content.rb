shared_examples_for "Storage Content" do
  it { should validate_presence_of :possessor_type }
  it { should belong_to :possessor }
end