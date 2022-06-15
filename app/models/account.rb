# frozen_string_literal: true

class Account < ApplicationRecord
  belongs_to :customer
  has_many :transactions
  has_many :cards
end
