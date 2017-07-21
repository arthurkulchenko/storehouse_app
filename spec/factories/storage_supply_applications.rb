FactoryGirl.define do
  factory :storage_supply_application, class: 'Storage::SupplyApplication' do
    status "MyString"
    facility nil
  end
end
