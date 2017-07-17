RSpec.describe Facility, type: :model do
  [:name, :supervisor, :address, :manager].each do |collumn|
    it { should validate_presence_of(collumn) }
    it { should have_many(:storages).dependent(:delete_all) }
  end
end
