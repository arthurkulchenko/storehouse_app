RSpec.describe Facility, type: :model do
  [:name, :supervisor, :address, :manager].each do |collumn|
    it { should validate_presence_of(collumn) }
  end
  it { should have_one(:storage_house).class_name("Storage::House").dependent(:delete) }
  it { should have_many(:storage_applications).class_name("Storage::Application").dependent(:delete_all) }
  it { should have_many(:storage_additions).class_name("Storage::Operation::Addition").dependent(:delete_all) }
  it { should have_many(:storage_write_offs).class_name("Storage::Operation::WriteOff").dependent(:delete_all) }
  
  it "#creates new storagehouse when new facility is created" do
    expect{
      Facility.create(
      	    name: "MyString",
                       supervisor: "MyString",
                       address: "MyString",
                       manager: "MyString"
                      )
    }.to change(Storage::House, :count).by(1)
  end
end
