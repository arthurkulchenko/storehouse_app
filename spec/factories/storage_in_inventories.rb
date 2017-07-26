FactoryGirl.define do
  factory :storage_in_inventory, class: 'Storage::In::Inventory' do
    title "MyString"
    amount 1
    kind "MyString"
    possesor nil
  end
end
