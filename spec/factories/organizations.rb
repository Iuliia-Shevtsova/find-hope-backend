FactoryBot.define do
  factory :organization do
    # name { "MyString" }
    # address { "MyString" }
    # zipCode { 1 }
    # website { "MyString" }
    # facebook { "MyString" }
    # twitter { "MyString" }
    name { Faker::Lorem.word }
    address { Faker::Lorem.word }
    zipCode { Faker::Number.number(digits: 6) }
    website { Faker::Lorem.word }
    facebook { Faker::Lorem.word }
    twitter { Faker::Lorem.word }
    # category_id nil
  end
end
