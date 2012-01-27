FactoryGirl.define do
  factory :creditcard do |f|
    cvv '123'
    number '4007000000027'
    cardtype 'visa'
    first_name 'Johnny'
    last_name 'Walker'
    address1 '100 Main street'
    state 'Florida'
    zipcode '33333'
    expires_on { 1.year.from_now }
  end
end
