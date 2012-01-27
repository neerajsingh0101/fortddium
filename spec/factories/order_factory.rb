FactoryGirl.define do
  factory :order do |f|
    sequence(:number) { |t| "xxx#{t}" }
  end
end

