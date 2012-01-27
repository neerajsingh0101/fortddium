FactoryGirl.define do
  factory :shop do |f|
    sequence(:name){|n| "store-#{n}"}
    twitter_handle '@nimbleshop'
    intercept_email 'johnnie.walker@nimbleshop.com'
    from_email 'support@nimbleshop.com'
  end
end

