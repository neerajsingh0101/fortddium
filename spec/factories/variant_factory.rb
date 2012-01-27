FactoryGirl.define do
  factory :variant do |f|
    product
    price 100
    variation1_value 'v1'
    variation2_value 'v2'
    variation3_value 'v3'
  end
end

