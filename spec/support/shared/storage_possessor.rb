shared_examples_for "Storage possessor" do
  it { should validate_presence_of :por_type }
  it { should validate_presence_of :por_id }
  it { should belong_to :por }
end