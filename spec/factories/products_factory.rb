FactoryGirl.define do
  factory :product do
    sequence(:name) { |t| "name#{t}" }
    sequence(:description) { |t| "This is product description#{t}" }
    price 50

    # When a product is created through admin interface then carrierwave creates a record for each product
    # even if no picture is uploaded
    after_create { |product| product.pictures.create }
  end
end
