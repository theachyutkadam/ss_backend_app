require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context '#create' do
    let(:transaction) { create(:transaction) }
    it 'should create new transaction' do
      expect(transaction).to be_valid
    end
  end

  context 'relationship' do
    it 'should belongs_to customer' do
      expect(Transaction.reflect_on_association(:customer).macro).to eq(:belongs_to)
    end
    it 'should belongs_to account' do
      expect(Transaction.reflect_on_association(:account).macro).to eq(:belongs_to)
    end
  end

end
