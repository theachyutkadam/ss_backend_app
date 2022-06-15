# frozen_string_literal: true

FactoryBot.define do
  factory :card do
    name { 'MyString' }
    csv { 1 }
    pin { 'MyString' }
    number { 'MyString' }
    type { 1 }
    expired_at { '2022-06-15 16:00:54' }
    status { 1 }
    account
  end
end
