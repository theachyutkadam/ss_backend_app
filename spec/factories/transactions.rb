# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    narration { 'MyText' }
    credit_amount { Faker::Number.number(digits: 1) }
    debit_amount { Faker::Number.number(digits: 5) }
    closing_balance { Faker::Number.number(digits: 5) }
    customer
    account
  end
end
