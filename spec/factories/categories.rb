FactoryBot.define do
  factory :category do
    # name { "MyString" }
    name { Faker::Lorem.word }
    organization_id nil
  end
end
