FactoryGirl.define do
  factory :product_group_condition do

    trait :price_condition do
      name :price
      operator 'lt'
      value 43
    end

    trait :name_condition do
      name :name
      operator 'starts'
      value 'george'
    end

    trait :text_condition do
      name  { Factory.create(:text_custom_field).id }
      operator 'starts'
      value 'george'
    end

    trait :number_condition do
      name  { Factory.create(:number_custom_field).id }
      operator 'lt'
      value 43
    end

    trait :date_condition do
      name  { Factory.create(:date_custom_field).id }
      operator 'gt'
      value { '1/1/2001' }
    end

    factory :date_group_condition,  :traits => [ :date_condition ]
    factory :text_group_condition,  :traits => [ :text_condition ]
    factory :number_group_condition,:traits => [ :number_condition ]
    factory :price_group_condition, :traits => [ :price_condition ]
    factory :name_group_condition,  :traits => [ :name_condition ]
  end
end
