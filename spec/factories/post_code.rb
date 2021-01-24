FactoryBot.define do
  factory  :post_code do
    code { Faker::Address.zip_code }
    city { Faker::Address.city }

    initialize_with { new(code, city) }
  end
end