FactoryGirl.define do
  factory :storage_operation_addition, class: 'Storage::Operation::Addition' do
    status "MyString"
    facility nil
  end
end
