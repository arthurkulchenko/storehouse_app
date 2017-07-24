FactoryGirl.define do
  factory :storage_operation_write_off, class: 'Storage::Operation::WriteOff' do
    status "MyString"
    facility nil
  end
end
