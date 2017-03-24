require 'rails_helper'

RSpec.describe Client, type: :model do
  subject(:client) { clients(:one) }

  it 'should have a name' do
    new_client = described_class.new
    new_client.valid?
    expect(new_client).not_to be_valid
    expect(new_client.errors.messages[:name]).to include('can\'t be blank')
  end

end
