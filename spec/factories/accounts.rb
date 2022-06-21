# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    account_type { 1 }
    balance { Faker::Number.number(digits: 5) }
    customer
    status { 1 }
    description { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
  end
end
