require 'rails_helper'

RSpec.describe Organization, type: :model do
  # Association test
  it { should have_and_belong_to_many(:categories) }
  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:zipCode) }
end
