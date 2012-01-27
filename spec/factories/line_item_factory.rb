FactoryGirl.define do
  factory :line_item do |f|
    order
    product
    quantity 1
  end
end

