class Customer < ApplicationRecord
  has_many :transactions
  has_one :account
end
