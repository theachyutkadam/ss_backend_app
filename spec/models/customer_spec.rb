require 'rails_helper'

RSpec.describe Customer, type: :model do
  context '#create' do
    let(:customer) { create(:customer) }
    it 'should create new customer' do
      expect(customer).to be_valid
    end
  end
end
