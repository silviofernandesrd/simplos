require 'rails_helper'

RSpec.describe Company, type: :model do
  subject(:company) { companies(:one) }

  it 'should have a name' do
    new_company = described_class.new
    new_company.valid?
    expect(new_company).not_to be_valid
    expect(new_company.errors.messages[:name]).to include('can\'t be blank')
  end
end
