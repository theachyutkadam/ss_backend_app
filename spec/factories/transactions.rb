FactoryBot.define do
  factory :transaction do
    narration { "MyText" }
    credit_amount { "MyString" }
    debit_amount { "MyString" }
    closing_balance { "MyString" }
    customer { nil }
    account { nil }
  end
end
