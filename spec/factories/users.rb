FactoryGirl.define do

  factory :user do
    nickname              "ニックネーム"
    email                 "kkk@gmail.com"
    password              "00000000"
    password_confirmation "00000000"
    last_name             "さん"
    first_name            "ぷる"
    last_name_kana        "サン"
    first_name_kana       "プル"
    birth_year            "2000"
    birth_month           "1"
    birth_day             "1"
  end

end
