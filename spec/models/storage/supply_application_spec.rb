require 'rails_helper'

RSpec.describe Storage::SupplyApplication, type: :model do
  # [:consumables, :equipment, :inventory, :chemical_consumables].each do |model|
  #   it { should have_many(model).class_name("StorageContent::#{model.to_s.classify}").dependent(:delete_all) }
  # end
  it_behaves_like 'Storage facility'
  it { should validate_presence_of(:status) }
  it do 
       should validate_inclusion_of(:status)
       .in_array( %w(awaits approved unapproved closed hidden) )
     end
end