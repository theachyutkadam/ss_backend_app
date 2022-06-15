require 'rails_helper'

RSpec.describe Card, type: :model do
  context '#create' do
    let(:card) { create(:card) }
    it 'should create new card' do
      expect(card).to be_valid
    end
  end

  context 'relationship' do
    it 'should belongs_to account' do
      expect(Card.reflect_on_association(:account).macro).to eq(:belongs_to)
    end
  end
end
