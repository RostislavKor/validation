FactoryBot.define do
  factory  :user do
    name { Faker::Name.name }
    age { 64 }
    phone_number

    initialize_with { new(name, age, phone_number) }
  end
end