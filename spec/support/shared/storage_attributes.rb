shared_examples_for "Storage Attributes" do
  [:consumables, :equipment, :inventory, :chemical_consumables].each do |model|
    it { should have_many(model).dependent(:delete_all) }
  end
end