FactoryGirl.define do
  factory :storage_in_consumable, class: 'Storage::In::Consumable' do
    title "MyString"
    amount 1
    kind "MyString"
    possesor nil
  end
end
