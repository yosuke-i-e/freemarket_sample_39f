FactoryGirl.define do

  factory :item do
    sequence(:name) {Faker::Food.dish}
    sequence(:price) {Faker::Number.between(100, 10000)}
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }

    after(:create) do |item|
      create_list(:item_image, 3, item: item)
    end
  end

end
