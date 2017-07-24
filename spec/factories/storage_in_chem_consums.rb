FactoryGirl.define do
  factory :storage_in_chem_consum, class: 'Storage::In::ChemConsum' do
    title "MyString"
    amount 1
    pack_form "MyString"
    por nil
    ph_rate 1
    purpose "MyString"
    additional_info "MyText"
  end
end
