# frozen_string_literal: true

FactoryBot.define do
  factory :card do
    name { 'Debit' }
    csv { Faker::Stripe.ccv }
    pin { Faker::Number.between(from: 1111, to: 9999) }
    number { Faker::Stripe.valid_card }
    card_type { 1 }
    expired_at { Faker::Date.between_except(from: Date.today, to: 10.year.from_now, excepted: Date.today)  }
    status { 1 }
    account
  end
end
