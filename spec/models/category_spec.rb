require 'rails_helper'

RSpec.describe Category, type: :model do
  # Association test
  it { should have_and_belong_to_many(:organizations) }
  # Validation tests
  it { should validate_presence_of(:name) }
end
