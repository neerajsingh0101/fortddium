FactoryGirl.define do
  factory :picture do |f|
    product
    file_name nil
    content_type nil
    file_size nil
  end
end
