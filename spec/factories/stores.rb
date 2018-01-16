FactoryBot.define do
  factory :store do
    name { Faker::Company.name }
    opening_time { Faker::Time.between(Date.today.beginning_of_day, Date.today.end_of_day, :morning).strftime("%-l.%M%P") }
    closing_time { Faker::Time.between(Date.today.beginning_of_day, Date.today.end_of_day, :night).strftime("%-l.%M%P") }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end