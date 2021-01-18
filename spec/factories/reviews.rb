FactoryBot.define do
  factory :review do
    title { "MyString" }
    description { "MyString" }
    score { 1 }
    date { "2021-01-18" }
    organization { nil }
  end
end
