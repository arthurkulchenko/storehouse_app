shared_examples_for "Storage object attributes" do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:amount) }
end