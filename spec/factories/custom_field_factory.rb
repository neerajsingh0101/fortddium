FactoryGirl.define do
  factory :custom_field do
    sequence(:name) { |t| "name#{t}" }

    trait :number do
      field_type 'number'
    end

    trait :date do
      field_type 'date'
    end

    trait :text do
      field_type 'text'
    end

    factory :number_custom_field, traits: [:number]
    factory :date_custom_field, traits: [:date ]
    factory :text_custom_field, traits: [:text]
  end
end
