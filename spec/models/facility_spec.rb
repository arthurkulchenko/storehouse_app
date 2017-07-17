RSpec.describe Facility, type: :model do
  [:name, :supervisor, :address, :manager].each do |collumn|
    it { should validate_presence_of(collumn) }
  end
  it { should have_one(:storage_house).class_name("Storage::House").dependent(:delete) }
  it { should have_many(:storage_applications).class_name("Storage::Application").dependent(:delete_all) }
  it { should have_many(:storage_additions).class_name("Storage::Operation::Addition").dependent(:delete_all) }
  it { should have_many(:storage_write_offs).class_name("Storage::Operation::WriteOff").dependent(:delete_all) }
end
