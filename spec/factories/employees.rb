# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    status { 1 }
    salary { 'MyString' }
    date_of_joining { '2022-06-15 16:00:52' }
    position { 1 }
  end
end
