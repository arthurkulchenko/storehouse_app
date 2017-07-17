RSpec.describe Facility, type: :model do
  [:name, :supervisor, :address, :manager].each do |collumn|
    it { should validate_presence_of(collumn) }
    it { should have_one(:storage).dependent(:delete) }
  end
end
