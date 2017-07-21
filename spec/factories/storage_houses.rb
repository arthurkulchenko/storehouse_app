FactoryGirl.define do
  factory :storage_house, class: 'Storage::House' do
    status "MyString"
    facility nil
  end
end
