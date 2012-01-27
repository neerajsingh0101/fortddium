FactoryGirl.define do
  factory :shipping_method do
    sequence(:name) { |t| "name#{t}" }

    trait :country do
      association :shipping_zone, :factory => :country_shipping_zone
      lower_price_limit  10
      upper_price_limit  20
      base_price    2.99
    end

    trait :regional do
      association :shipping_zone, :factory => :regional_shipping_zone
      offset 1.00
      association :parent, :factory => :country_shipping_method
    end

    factory :country_shipping_method,   traits: [:country]
    factory :regional_shipping_method,  traits: [:regional]
  end
end
