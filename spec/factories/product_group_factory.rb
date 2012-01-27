FactoryGirl.define do
  factory :product_group do
    sequence(:name) { |t| "name#{t}" }
  end
end
