# frozen_string_literal: true

FactoryBot.define do
  factory  :phone_number do
    number { Faker::PhoneNumber.phone_number }

    initialize_with { new(number) }
  end
end
