FactoryGirl.define do
  factory :storage_in_invetory, class: 'Storage::In::Invetory' do
    title "MyString"
    amount 1
    kind "MyString"
    possesor nil
  end
end
