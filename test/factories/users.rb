FactoryGirl.define do
  factory :user do
    email    'test@email.com'
    password 'bad_password'
    password_confirmation 'bad_password'

    trait :with_name do
      given_name  'Bob'
      family_name 'Hippo'
    end
  end
end
