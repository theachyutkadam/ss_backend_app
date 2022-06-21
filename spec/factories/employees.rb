# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    status { 1 }
    salary { Faker::Number.number(digits: 5) }
    date_of_joining { Faker::Date.between_except(from: Date.today, to: 10.year.ago, excepted: Date.today) }
    position { Faker::Job.position }
  end
end
