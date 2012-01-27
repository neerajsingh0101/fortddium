FactoryGirl.define do
  factory :variantion do |f|
    product
    name 'Color'
    variation_type 'variation1'
    active false
  end
end
