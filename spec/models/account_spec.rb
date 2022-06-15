require 'rails_helper'

RSpec.describe Account, type: :model do
  context '#create' do
    let(:account) { create(:account) }
    it 'should create new account' do
      expect(account).to be_valid
    end
  end
end
