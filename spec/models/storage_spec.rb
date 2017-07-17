require 'rails_helper'

RSpec.describe Storage, type: :model do
  it { should belong_to :facility }
  it { should validate_presence_of :facility_id }

  [:consumables, :equipment, :inventory, :chemical_consumables].each do |model|
    it { should have_many(model).class_name("StorageContent::#{model.to_s.classify}").dependent(:delete_all) }
  end
end
