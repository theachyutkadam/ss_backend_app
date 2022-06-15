# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Account, type: :model do
  context '#create' do
    let(:account) { create(:account) }
    it 'should create new account' do
      expect(account).to be_valid
    end
  end

  context 'relationship' do
    it 'should has_many transactions' do
      expect(Account.reflect_on_association(:transactions).macro).to eq(:has_many)
    end
    it 'should has_many cards' do
      expect(Account.reflect_on_association(:cards).macro).to eq(:has_many)
    end
    it 'should belongs_to customer' do
      expect(Transaction.reflect_on_association(:customer).macro).to eq(:belongs_to)
    end
  end
end
