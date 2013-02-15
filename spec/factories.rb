FactoryGirl.define do
  factory :user do
    first_name  "Factory"
    last_name   "Girl"
    username    "Fantine"
    email       "fantine@factory.aww"
    password    "mysecretpassword"
    password_confirmation "mysecretpassword"
    age         20
    gender      3
    city        "Digne"
    country     "fr"
    zipcode     "1234"
  end
end