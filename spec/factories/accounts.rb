# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    type { 1 }
    balance { 1.5 }
    customer
    status { 1 }
    description { 'MyString' }
  end
end
