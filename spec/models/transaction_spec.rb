require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context '#create' do
    let(:transaction) { create(:transaction) }
    it 'should create new transaction' do
      expect(transaction).to be_valid
    end
  end
end
