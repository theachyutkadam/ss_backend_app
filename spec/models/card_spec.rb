require 'rails_helper'

RSpec.describe Card, type: :model do
  context '#create' do
    let(:card) { create(:card) }
    it 'should create new card' do
      expect(card).to be_valid
    end
  end
end
