FactoryBot.define do
  factory :easy_broker_property, class: "EasyBroker::Property" do
    agent { Faker::Name.name }
    public_id { Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3) }
    title { Faker::Lorem.words(number: 6) }
    bedrooms { Faker::Number.number(digits: 1) }
    bathrooms { Faker::Number.number(digits: 1) }
    parking_spaces { Faker::Number.number(digits: 1) }
    location { Faker::Address.secondary_address }
    property_type { "Apartment" }
    lot_size { Faker::Number.number(digits: 2) }
    construction_size { Faker::Number.number(digits: 2) }
    updated_at { Time.current.to_s }
    show_prices { true }
    share_commission { true }
    operations do
      [
        {
          "type": "sale",
          "amount": 500000,
          "formated_amount": "US$ 500,000",
          "currency": "USD",
          "unit": "total",
          "commission": {
            "type": "amount",
            "value": 10000,
            "currency": "USD"
          }
        },
        {
          "type": "temporary_rental",
          "amount": 500,
          "formated_amount": "US$ 500",
          "currency": "USD",
          "period": "monthly"
        }
      ]
    end
  end
end
