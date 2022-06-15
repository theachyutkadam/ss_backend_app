FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    contact { Faker::PhoneNumber.cell_phone }
    birth_date { Faker::Date.birthday }
    address { Faker::Address.full_address }
    is_deleted { nil }
  end
end
