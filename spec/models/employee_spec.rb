require 'rails_helper'

RSpec.describe Employee, type: :model do
  context '#create' do
    let(:employee) { create(:employee) }
    it 'should create new employee' do
      expect(employee).to be_valid
    end
  end
end
