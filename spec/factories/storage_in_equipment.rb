FactoryGirl.define do
  factory :storage_in_equipment, class: 'Storage::In::Equipment' do
    title "MyString"
    amount 1
    kind "MyString"
    possesor nil
  end
end
