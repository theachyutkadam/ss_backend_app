# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  context '#create' do
    let(:customer) { create(:customer) }
    it 'should create new customer' do
      expect(customer).to be_valid
    end
  end

  context 'relationship' do
    it 'should has_one account' do
      expect(Customer.reflect_on_association(:account).macro).to eq(:has_one)
    end

    it 'should has_many transactions' do
      expect(Customer.reflect_on_association(:transactions).macro).to eq(:has_many)
    end
  end
end
