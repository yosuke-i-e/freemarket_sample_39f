FactoryGirl.define do

  sequence(:random_year) do |n|
    @random_years ||= (1900..2019).to_a.shuffle
    @random_years[n]
  end

  sequence(:random_month) do |n|
    @random_months ||= (1..12).to_a.shuffle
    @random_months[n]
  end

  sequence(:random_day) do |n|
    @random_days ||= (1..31).to_a.shuffle
    @random_days[n]
  end

  factory :user do
    password = Faker::Internet.password(8)
    gimei = Gimei.name
    nickname              gimei.romaji
    email                 Faker::Internet.free_email
    password              password
    password_confirmation password
    last_name             gimei.last.kanji
    first_name            gimei.first.kanji
    last_name_kana        gimei.last.katakana
    first_name_kana       gimei.first.katakana
    birth_year            {FactoryGirl.generate(:random_year)}
    birth_month           {FactoryGirl.generate(:random_month)}
    birth_day             {FactoryGirl.generate(:random_day)}
  end

end
