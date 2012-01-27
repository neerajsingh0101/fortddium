FactoryGirl.define do
  factory :link_group do
    sequence(:name) { |t| "name#{t}" }
  end
end
