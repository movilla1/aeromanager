# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::FactoryBot.define do
  factory :user, class: "User" do
    name { ::Faker::Name.name }
    email { ::Faker::Internet.email }
    password { "password123" }
    active { true }
    confirmed { true }
    role { :user }
    license_type { :ppa }
    sequence :license do |n|
      "1234A#{n}"
    end

    trait :superadmin do
      role { :superadmin }
    end

    trait :admin do
      role { :admin }
    end

    trait :user do
      role { :user }
    end
  end
end
