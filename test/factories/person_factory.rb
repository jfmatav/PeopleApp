FactoryGirl.define do

  factory :person do
    first_name "John"
    last_name  "Doe"
    email "johndoe@gmail.com"
    birthdate { 21.years.ago }
  end

end