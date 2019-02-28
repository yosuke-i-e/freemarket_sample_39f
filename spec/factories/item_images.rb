FactoryGirl.define do
  factory :item_image do
    sequence(:body) {Faker::Food.dish}
    item_id = '1'
  end
end
