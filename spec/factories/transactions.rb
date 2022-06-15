# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    narration { 'MyText' }
    credit_amount { 'MyString' }
    debit_amount { 'MyString' }
    closing_balance { 'MyString' }
    customer
    account
  end
end
