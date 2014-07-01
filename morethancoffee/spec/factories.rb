FactoryGirl.define do
  factory :user do
    name     "Jenny Allen"
    email    "jenny.allen@yale.edu"
    password "foobar"
    password_confirmation "foobar"
  end
end